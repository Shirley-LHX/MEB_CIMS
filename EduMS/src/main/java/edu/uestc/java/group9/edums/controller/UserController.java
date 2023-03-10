package edu.uestc.java.group9.edums.controller;

import edu.uestc.java.group9.edums.entity.StuMessage;
import edu.uestc.java.group9.edums.entity.TeacherInformation;
import edu.uestc.java.group9.edums.entity.User;
import edu.uestc.java.group9.edums.service.StudentService;
import edu.uestc.java.group9.edums.service.TeacherService;
import edu.uestc.java.group9.edums.service.UserService;
import edu.uestc.java.group9.edums.util.UploadUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Value("${upload_path}")
    private String uploadPath;

    @Autowired
    private UserService userService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private TeacherService teacherService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "/user/add"; // 显示 add 页面
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(User user, MultipartFile avatarFile, HttpServletRequest request, Model model) {
        user.setID(null);
        if (userService.selectByUsername(user.getUsername()) != null) {
            model.addAttribute("error", "用户名已存在");
            return "/user/add";
        }

        if (avatarFile == null || avatarFile.isEmpty()) {
            model.addAttribute("error", "头像不能为空");
            return "/user/add";
        }

        String avatarPath;
        try {
            avatarPath = UploadUtils.uploadFile(uploadPath, avatarFile, request);
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "头像上传失败");
            return "/user/add";
        }

        user.setAvatar(avatarPath);

        userService.insert(user);
        return "redirect:/user/list"; // 添加完后显示列表

    }

    @RequestMapping(value = "/update/{ID}", method = RequestMethod.GET)
    public String update(@PathVariable Long ID, Model model) {
        User user = userService.selectByID(ID);
        List<StuMessage> students = studentService.findAllMsg();
        List<TeacherInformation> teachers = teacherService.findAll();
        model.addAttribute("students", students);
        model.addAttribute("teachers", teachers);
        model.addAttribute("user", user);
        return "/user/update"; // 显示 update 页面
    }

    @RequestMapping(value = "/update/{ID}", method = RequestMethod.POST)
    public String update(@PathVariable Long ID, User user, MultipartFile avatarFile, HttpServletRequest request) {
        user.setID(ID);
        User currentUser = userService.selectByID(user.getID());
        if (StringUtils.isBlank(user.getUsername())) user.setUsername(currentUser.getUsername());
        if (StringUtils.isBlank(user.getPassword())) user.setPassword(currentUser.getPassword());
        if (StringUtils.isBlank(user.getEmail())) user.setEmail(currentUser.getEmail());
        if (avatarFile == null || avatarFile.isEmpty()) {
            user.setAvatar(currentUser.getAvatar());
        } else {
            String avatarPath;
            try {
                avatarPath = UploadUtils.uploadFile(uploadPath, avatarFile, request);
                user.setAvatar(avatarPath);
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("头像更新失败，使用原来的头像");
                user.setAvatar(currentUser.getAvatar());
            }
        }

        userService.update(user);
        return "redirect:/user/list"; // 展示更新后的列表
    }

    @RequestMapping("/delete/{ID}")
    public String deleteByID(@PathVariable Long ID) {
        userService.deleteByID(ID);
        return "redirect:/user/list"; // 删除完后显示列表
    }

    @RequestMapping("/list")
    public String list(Model model) {
        // 暂时不分页
        List<User> users = userService.selectByPage(1, Integer.MAX_VALUE);
        model.addAttribute("users", users);
        return "/user/list"; // 显示 list 页面
    }

}
