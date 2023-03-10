package edu.uestc.java.group9.edums.entity;

public class StuMessage {
    private Long id_stu;    //学号
    private String name_stu;  //学生姓名
    private String IDcard_stu;  //身份证号
    private String school;  //在读学校
    private Long classNum_stu; //所在班级
    private String enterdate_stu;  //入学日期
    private String gradate;  //毕业日期
    private String phone_stu;  //学生电话

    public Long getId_stu(){
        return this.id_stu;
    }

    public void setId_stu(Long id){
        id_stu=id;
    }

    public String getName_stu(){
        return this.name_stu;
    }

    public void setName_stu(String name){
        name_stu=name;
    }

    public String getIDcard_stu(){
        return this.IDcard_stu;
    }

    public void setIDcard_stu(String card){
        IDcard_stu=card;
    }

    public String getSchool(){
        return this.school;
    }

    public void setSchool(String school){
        this.school=school;
    }

    public Long getClassNum_stu(){
        return this.classNum_stu;
    }

    public void setClassNum_stu(Long classNum_stu){
        this.classNum_stu = classNum_stu;
    }

    public String getEnterdate_stu(){
        return this.enterdate_stu;
    }

    public void setEnterdate_stu(String enterdate_stu){
        this.enterdate_stu = enterdate_stu;
    }

    public String getGradate(){
        return this.gradate;
    }

    public void setGradate(String gradate){
        this.gradate=gradate;
    }

    public String getPhone_stu(){
        return this.phone_stu;
    }

    public void setPhone_stu(String phone){
        phone_stu=phone;
    }
}
