package edu.uestc.java.group9.edums.controller;

import edu.uestc.java.group9.edums.entity.PersonnelChange;
import edu.uestc.java.group9.edums.entity.TeacherInformation;
import edu.uestc.java.group9.edums.entity.Title;
import edu.uestc.java.group9.edums.entity.vo.TeacherVo;
import edu.uestc.java.group9.edums.service.PersonnelService;
import edu.uestc.java.group9.edums.service.TeacherService;
import edu.uestc.java.group9.edums.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/teacher")
@Controller
public class TeacherController {

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private TitleService titleService;

    @Autowired
    private PersonnelService personnelService;

    /*------------------------------教师信息管理-----------------------------------*/
    // 返回所有教师的基础信息
    @RequestMapping("teacherPage")
    public String listPage(Model model) {
        List<TeacherInformation> teacherInformation = teacherService.findAll();
        model.addAttribute("list", teacherInformation);
        return "/teacher/teacherPage";
    }

    // 删除某个教师信息
    @RequestMapping("deleteTeacher")
    public String deleteBook(Long teacherId) {
        teacherService.deleteByTeacherId(teacherId);
        return "redirect:/teacher/teacherPage";
    }

    // 修改教师信息时向前端返回原教师信息
    @RequestMapping("/addPage")
    public String addPage(Long teacherId, Model model) {
        if (teacherId != null) {
            TeacherInformation teacherInformation = teacherService.getByTeacherId(teacherId);
            model.addAttribute("teacherInformation", teacherInformation);
        }
        return "/teacher/editTeacher";
    }

    // 修改或添加教师信息
    @RequestMapping("/add")
    public String add(TeacherInformation teacherInformation) {
        teacherService.insertOrUpdate(teacherInformation);
        return "redirect:/teacher/teacherPage";
    }

    // 通过教师ID搜索教师信息
    @RequestMapping("searchPage")
    public String searchPage() {
        return "/teacher/searchTeacherPage";
    }

    @RequestMapping("/searchTeacherPage")
    public String searchTeacherPage(Long teacherId, Model model) {
        List<TeacherInformation> teacher = teacherService.getById(teacherId);
        model.addAttribute("change", teacher);
        return "/teacher/searchTeacherPage";
    }

    /*------------------------------职称工资管理-----------------------------------*/

    // 设置职称工资页面
    @RequestMapping("titlePage")
    public String titlePage(Model model) {
        List<Title> titleInfo = titleService.findAll();
        model.addAttribute("list", titleInfo);
        return "/teacher/titlePage";
    }

    // 修改职称工资时返回原职称工资
    @RequestMapping("/changeTitle")
    public String changeTitle(String titleName, Model model) {
        Title titleInfo = titleService.getByTitleName(titleName);
        model.addAttribute("titleInfo", titleInfo);
        return "/teacher/editTitle";
    }

    // 修改职称工资
    @RequestMapping("/change")
    public String change(Title title) {
        titleService.Update(title);
        return "redirect:/teacher/titlePage";
    }

    // 转向多表查询工资页面
    @RequestMapping("SalaryInfo")
    public String SalaryInfo() {
        return "/teacher/salaryInfo";
    }

    // 返回多表查询结果(教师信息和对应工资)
    @RequestMapping("/getSalary")// 返回json 格式的数据到页面。
    public String getSalary(Model model) {
        List<TeacherVo> teacherVo = teacherService.getSalary();
        model.addAttribute("list", teacherVo);
        return "/teacher/salaryInfo";
    }

    /*------------------------------异动信息管理-----------------------------------*/

    /**
     * 所有异动信息列表
     */
    @RequestMapping("personnelPage")
    public String personnelPage(Model model) {
        List<PersonnelChange> personnelChange = personnelService.findAll();
        model.addAttribute("personnel", personnelChange);
        return "/teacher/personnelPage";
    }

    /**
     * 增加异动信息
     */
    @RequestMapping("/addPersonnel")
    public String addPersonnel() {
        return "/teacher/addPC";
    }

    @RequestMapping("/addPC")
    public String addPC(PersonnelChange personnelChange) {
        personnelService.Insert(personnelChange);
        //请求重定向,重定向是发一个302的状态码给浏览器，浏览器自己去请求跳转的网页，url改变，request数据不带到重定向的方法中
        return "redirect:/teacher/personnelPage";
    }

    /**
     * 修改异动信息
     */
    @RequestMapping("/editPersonnel")
    public String editPersonnel(Long Id, Model model) {
        if (Id != null) {
            PersonnelChange personnelChange = personnelService.getById(Id);
            model.addAttribute("personnelChange", personnelChange);
        }
        return "/teacher/editPC";
    }

    @RequestMapping("/editPC")
    public String editPC(PersonnelChange personnelChange) {
        personnelService.Update(personnelChange);
        //请求重定向,重定向是发一个302的状态码给浏览器，浏览器自己去请求跳转的网页，url改变，request数据不带到重定向的方法中
        return "redirect:/teacher/personnelPage";
    }

    /**
     * 删除异动信息
     */
    @RequestMapping("deletePersonnel")
    public String deletePersonnel(Long Id) {
        personnelService.deleteById(Id);
        return "redirect:/teacher/personnelPage";
    }

    /**
     * 搜索异动信息
     */
    @RequestMapping("searchPersonnel")
    public String searchPersonnel() {
        return "/teacher/searchPCPage";
    }

    @RequestMapping("/searchPCPage")
    public String searchPCPage(Long teacherId, Model model) {
        List<PersonnelChange> change = personnelService.getByTeacherId(teacherId);
        model.addAttribute("changePC", change);
        return "/teacher/searchPCPage";
    }

}
