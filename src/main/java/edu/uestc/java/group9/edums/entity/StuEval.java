package edu.uestc.java.group9.edums.entity;

public class StuEval {
    private Long id_stu;  //学号
    private char virtue_stu;  //道德品质
    private char civicliteracy_stu;  //公民素质
    private char learning_stu;  //学习能力
    private char communicate_stu;  //交流能力
    private char attend_stu;  //课堂出勤
    private char classbehavior_stu; //课堂表现

    public Long getId_stu(){
        return this.id_stu;
    }

    public void setId_stu(Long id){
        id_stu=id;
    }

    public char getVirtue_stu(){
        return this.virtue_stu;
    }

    public void setVirtue_stu(char virtue){
        virtue_stu=virtue;
    }

    public char getCivicliteracy_stu(){
        return this.civicliteracy_stu;
    }

    public void setCivicliteracy_stu(char literacy){
        civicliteracy_stu=literacy;
    }

    public char getLearning_stu(){
        return this.learning_stu;
    }

    public void setLearning_stu(char learning){
        this.learning_stu=learning;
    }

    public char getCommunicate_stu(){
        return this.communicate_stu;
    }

    public void setCommunicate_stu(char communicate){
        this.communicate_stu=communicate;
    }

    public char getAttend_stu(){
        return this.attend_stu;
    }

    public void setAttend_stu(char attend){
        this.attend_stu=attend;
    }

    public char getClassbehavior_stu(){
        return this.classbehavior_stu;
    }

    public void setClassbehavior_stu(char classbehavior){
        this.classbehavior_stu=classbehavior;
    }
}
