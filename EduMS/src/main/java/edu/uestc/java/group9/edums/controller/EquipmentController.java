package edu.uestc.java.group9.edums.controller;

import edu.uestc.java.group9.edums.entity.Category;
import edu.uestc.java.group9.edums.entity.Equipment;
import edu.uestc.java.group9.edums.entity.User;
import edu.uestc.java.group9.edums.service.CategoryService;
import edu.uestc.java.group9.edums.service.EquipmentService;
import edu.uestc.java.group9.edums.util.UploadUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@RequestMapping("/equipment")
@Controller
public class EquipmentController {

    @Value("${upload_path}")
    private String uploadPath;

    @Autowired
    private EquipmentService equipmentService;

    @Autowired
    private CategoryService categoryService;


    /**
     * 根据 title 和 author 查询资源
     */
    @RequestMapping(value = "/showEquipment")
    public String showAllEquipmentByPage(@RequestParam(value = "currentPage", defaultValue = "1", required = false)
                                                 int currentPage, String title, String author, Model model) {
        model.addAttribute("pageMsg", equipmentService.selectByPage(title, author, currentPage));
        return "/equipment/showAllEquipment";
    }

    /**
     * 跳转 searchEquipment 页面
     */
    @RequestMapping(value = "/searchEquipment")
    public String toSearchEquipment() {
        return "/equipment/searchEquipment";
    }

    /**
     * 搜索页面
     */
    @RequestMapping(value = "/searchEquipmentPage")
    public String searchEquipment(@RequestParam(value = "currentPage", defaultValue = "1", required = false)
                                          int currentPage, String title, String author, Model model) {
        model.addAttribute("pageMsg", equipmentService.selectByPage(title, author, currentPage));
        return "/equipment/searchEquipment";
    }

    /**
     * 查看设备详细信息
     */
    @RequestMapping(value = "/equipmentDetail")
    public String showEquipmentDetail(int id, Model model) {
        Equipment equipment = equipmentService.selectByID(id);
        Category cate = categoryService.selectByPrimaryKey(equipment.getCategoryId());
        model.addAttribute("equipment", equipment);
        model.addAttribute("cate", cate);
        return "/equipment/equipmentDetail";
    }


    /**
     * 跳转到添加设备页面
     */
    @RequestMapping(value = "/toAddNewEquipment")
    public String toAddNewEquipment() {
        return "/equipment/addNewEquipment";
    }

    /**
     * 添加设备
     */
    @RequestMapping(value = "/addNewEquipment")
    public String addNewBEquipment(Equipment equipment, MultipartFile file, HttpServletRequest request, HttpSession httpSession) throws Exception {
        User user = (User) httpSession.getAttribute("user");
        equipment.setCreateTime(new Date());
        equipment.setCreateAdmin(user.getUsername());
        equipment.setUpdatePreAdmin(user.getUsername());
        equipment.setDelFlg(1);

        String newFileName = UploadUtils.uploadFile(uploadPath, file, request);
        equipment.setImage(newFileName);
        equipmentService.insertEquipment(equipment);
        return "redirect:/equipment/newEquipmentList";
    }


    /**
     * 查询最近上架的设备
     */
    @RequestMapping(value = "/newEquipmentList")
    public String newEquipmentList(Model model) {
        model.addAttribute("newEquipmentList", equipmentService.selectNewEquipment());
        return "/equipment/newEquipmentList";
    }

    /**
     * 下架设备
     */
    @RequestMapping(value = "/deleteEquipment")
    public String deleteEquipment(int id) {
        equipmentService.deleteByPrimaryKey(id);
        return "redirect:/equipment/showEquipment";
    }

    /**
     * 下架新上架的设别
     */
    @RequestMapping(value = "/deleteEquipmentNewList")
    public String deleteEquipmentNewList(int id) {
        equipmentService.deleteByPrimaryKey(id);
        return "redirect:/equipment/newEquipmentList";
    }

    /**
     * 下架查询到的设备
     */
    @RequestMapping(value = "/deleteSearchEquipment")
    public String deleteSearchEquipment(int id) {
        equipmentService.deleteByPrimaryKey(id);
        return "redirect:/equipment/searchEquipment";
    }


    /**
     * 已下架设备列表
     */
    @RequestMapping(value = "/deleteEquipmentList")
    public String deleteEquipmentList(Model model) {
        model.addAttribute("EquipmentList", equipmentService.selectEquipmentDel());
        return "/equipment/delEquipmentList";
    }


    /**
     * 跳转到修改书籍信息
     */
    @RequestMapping(value = "/toUpdateEquipment")
    public String updateEquipmentPage(int id, Model model) {
        Equipment equipment = equipmentService.selectByID(id);
        Category cate = categoryService.selectByPrimaryKey(equipment.getCategoryId());
        model.addAttribute("equipment", equipment);
        model.addAttribute("cate", cate);
        return "/equipment/editEquipment";
    }

    /**
     * 修改设备信息
     */
    @RequestMapping(value = "/updateEquipment")
    public String updateEquipment(Equipment equipment, MultipartFile file, HttpServletRequest request, HttpSession httpSession) {
        System.out.println("上传过来的设备信息: " + equipment);
        Equipment oldEquipment = equipmentService.selectByID(equipment.getId());
        equipment.setPublishTime(oldEquipment.getPublishTime());
        User user = (User) httpSession.getAttribute("user");
        equipment.setUpdatePreAdmin(user.getUsername());
        if (file != null && !file.isEmpty()) {
            String newFileName = null;
            try {
                newFileName = UploadUtils.uploadFile(uploadPath, file, request);
            } catch (Exception e) {
                e.printStackTrace();
            }
            equipment.setImage(newFileName);
        } else {
            equipment.setImage(oldEquipment.getImage());
        }

        System.out.println("添加完成的设备信息: " + equipment);
        equipmentService.updateByPrimaryKeySelective(equipment);
        return "redirect:/equipment/showEquipment";

    }

    /**
     * 重新上架设备
     */
    @RequestMapping("/updateBackEquipment")
    public String updateBackEquipment(int id) {
        equipmentService.updateBackEquipment(id);
        return "redirect:/equipment/deleteEquipmentList";
    }

    /**
     * 彻底删除设备
     */
    @RequestMapping("/deleteEquipmentReal")
    public String deleteEquipmentReal(int id) {
        equipmentService.deleteEquipmentReal(id);
        return "redirect:/equipment/deleteEquipmentList";
    }

}
