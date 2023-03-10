package edu.uestc.java.group9.edums.controller;

import edu.uestc.java.group9.edums.entity.User;
import edu.uestc.java.group9.edums.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Value("${upload_path}")
    private String uploadPath;

    @Autowired
    private UserService userService;

    @RequestMapping(value = {"/login", "/"}, method = RequestMethod.GET)
    public String login() {
        return "/login";
    }

    /**
     * 登录以后根据用户身份跳转到相应的页面。
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String username, String password, HttpSession session) {
        // 前端需要通过此路径访问上传的图片
        session.setAttribute("imgPath", uploadPath);

        User user = userService.login(username, password);
        if (user == null) {
            session.setAttribute("errorInfo", "用户名或密码错误");
            return "/login";
        } else {
            session.setAttribute("user", user);
            session.removeAttribute("errorInfo");
            return "/index";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user");
        return "redirect:/login";
    }

    @RequestMapping("/index")
    public String index() {
        return "/index";
    }

}
