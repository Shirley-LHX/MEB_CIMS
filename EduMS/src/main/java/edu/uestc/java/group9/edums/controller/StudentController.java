package edu.uestc.java.group9.edums.controller;

import edu.uestc.java.group9.edums.entity.StuEval;
import edu.uestc.java.group9.edums.entity.StuHealth;
import edu.uestc.java.group9.edums.entity.StuMessage;
import edu.uestc.java.group9.edums.entity.StuScore;
import edu.uestc.java.group9.edums.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 罗
 */
@RequestMapping("/student")
@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/toUpdateStuMessage")
    public String toUpdateStuMessage(Long id, Model model) {
        StuMessage stuMessage = studentService.getMsgById(id);
        model.addAttribute("stuMessage", stuMessage);
        return "/student/editStuMessage";
    }

    @RequestMapping("/updateStuMessage")
    public String updateStuMessage(StuMessage stuMessage) {
        studentService.updateSM(stuMessage);
        return "redirect:/student/showAllMessage";
    }

    @RequestMapping("toAddNewStuMessage")
    public String toAddNewStuMessage() {
        return "/student/addNewStuMessage";
    }

    @RequestMapping("/addNewStuMessage")
    public String addNewStuMessage(StuMessage stuMessage) {
        studentService.insertSM(stuMessage);
        //请求重定向,重定向是发一个302的状态码给浏览器，浏览器自己去请求跳转的网页，url改变，request数据不带到重定向的方法中
        return "redirect:/student/showAllMessage";
    }

    @RequestMapping("/toSearchStuMessage") // 返回json 格式的数据到页面。
    public String toSearchStuMessage() { return "/student/searchStuMessage"; }

    @RequestMapping("/searchStuMessage")
    public String searchStuMessage(Long id, Model model) {
        model.addAttribute("stuMessage", studentService.getMsgById(id));
        return "/student/searchStuMessage";
    }

    @RequestMapping("showAllMessage")
    public String showMsgPage(Model model) {
        List<StuMessage> stuMessages = studentService.findAllMsg();  //直接调用子类
        model.addAttribute("stuMessageList", stuMessages);
        return "/student/showAllMessage";
    }

    @RequestMapping("deleteStuMessage")
    public String deleteStuMessage(Long id) {
        studentService.deleteMsgById(id);
        return "redirect:/student/showAllMessage";
    }

    @RequestMapping("/toUpdateStuEval")
    public String toUpdateStuEval(Long id, Model model) {
        StuEval stuEval = studentService.getEvlById(id);
        model.addAttribute("stuEval", stuEval);
        return "/student/editStuEval";
    }

    @RequestMapping("/updateStuEval")
    public String updateStuEval(StuEval stuEval) {
        studentService.updateSE(stuEval);
        return "redirect:/student/showAllEvaluation";
    }

    @RequestMapping("toAddNewStuEval")
    public String toAddNewStuEval() {
        return "/student/addNewStuEval";
    }

    @RequestMapping("/addNewStuEval")
    public String addNewStuEval(StuEval stuEval) {
        studentService.insertSE(stuEval);
        //请求重定向,重定向是发一个302的状态码给浏览器，浏览器自己去请求跳转的网页，url改变，request数据不带到重定向的方法中
        return "redirect:/student/showAllEvaluation";
    }

    @RequestMapping("/toSearchStuEval") // 返回json 格式的数据到页面。
    public String toSearchStuEval() { return "/student/searchStuEval"; }

    @RequestMapping("/searchStuEval")
    public String searchStuEval(Long id, Model model) {
        model.addAttribute("stuEval", studentService.getEvlById(id));
        return "/student/searchStuEval";
    }

    @RequestMapping("showAllEvaluation")
    public String showEvlPage(Model model) {
        List<StuEval> stuEvals = studentService.findAllEvl();  //直接调用子类
        model.addAttribute("stuEvalList", stuEvals);
        return "/student/showAllEvaluation";
    }

    @RequestMapping("deleteStuEval")
    public String deleteStuEval(Long id) {
        studentService.deleteEvlById(id);
        return "redirect:/student/showAllEvaluation";
    }

    /**
     * 显示全部成绩数据
     */
    @RequestMapping("showAllScore")
    public String showAllScore(Model model) {
        List<StuScore> stuScores = studentService.findAllScr();  //直接调用子类
        model.addAttribute("list", stuScores);
        return "/student/showAllScore";
    }

    /**
     * 添加加成绩
     */
    @RequestMapping("/toAddPageScr")
    public String toAddPageScr() { return "/student/addNewStuScore"; }

    @RequestMapping("/addNewStuScore")
    public String addNewStuScore(StuScore stuScore) {
        studentService.InsertSS(stuScore);
        return "redirect:/student/showAllScore";
    }

    /**
     * 修改成绩
     */
    @RequestMapping("/toUpdateStuScr")
    public String toUpdateStuScr(Long id, int t, Model model) {
        StuScore stuScore = studentService.getScrById(id, t);
        model.addAttribute("stuScore", stuScore);
        //请求重定向,重定向是发一个302的状态码给浏览器，浏览器自己去请求跳转的网页，url改变，request数据不带到重定向的方法中
        return "/student/editStuScore";
    }

    @RequestMapping("/UpdateStuScr")
    public String UpdateStuScr(StuScore stuScore) {
        studentService.UpdateSS(stuScore);
        return "redirect:/student/showAllScore";
    }

    /**
     * 查询成绩
     */
    @RequestMapping(value = "/toSearchStuScore")
    public String toSearchStuScore() {
        return "/student/searchStuScore";
    }

    @RequestMapping(value = "/searchScore")
    public String searchScore(Long id, Model model) {
        model.addAttribute("list", studentService.getScrByIdList(id));
        return "/student/searchStuScore";
    }

    /**
     * 删除成绩
     */

    @RequestMapping("/deleteStuScore")
    public String deleteStuScore(Long id, int t) {
        studentService.deleteScrById(id, t);
        return "redirect:/student/showAllScore";
    }


    //身心健康模块

    /**
     * 显示全部身心健康数据
     */
    @RequestMapping("showAllHealth")
    public String showAllHealth(Model model) {
        List<StuHealth> stuHealths = studentService.findAllHe();  //直接调用子类
        model.addAttribute("list", stuHealths);
        return "/student/showAllHealth";
    }


    /**
     * 添加身心健康
     */
    @RequestMapping("/toAddPageHe")
    public String toAddPageHe() { return "/student/addNewStuHealth"; }

    @RequestMapping("/addNewStuHealth")
    public String addNewStuHealth(StuHealth stuHealth) {
        studentService.InsertSH(stuHealth);
        return "redirect:/student/showAllHealth";
    }

    /**
     * 修改身心健康
     */
    @RequestMapping("/toUpdateStuHe")
    public String toUpdateStuHe(Long id, Model model) {
        StuHealth stuHealth = studentService.getHeById(id);
        model.addAttribute("stuHealth", stuHealth);
        //请求重定向,重定向是发一个302的状态码给浏览器，浏览器自己去请求跳转的网页，url改变，request数据不带到重定向的方法中
        return "/student/editStuHealth";
    }

    @RequestMapping("/UpdateStuHe")
    public String UpdateStuHe(StuHealth stuHealth) {
        studentService.UpdateSH(stuHealth);
        return "redirect:/student/showAllHealth";
    }

    /**
     * 查询身心健康
     */
    @RequestMapping(value = "/toSearchStuHealth")
    public String toSearchStuHealth() {
        return "/student/searchStuHealth";
    }

    @RequestMapping(value = "/searchHealth")
    public String searchStuHealth(Long id, Model model) {
        model.addAttribute("stuHealth", studentService.getHeById(id));
        return "/student/searchStuHealth";
    }

    /**
     * 删除身心健康
     */
    @RequestMapping("/deleteStuHealth")
    public String deleteStuHealth(Long id) {
        studentService.deleteHeById(id);
        return "redirect:/student/showAllHealth";
    }


}
