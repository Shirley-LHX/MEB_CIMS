package edu.uestc.java.group9.edums.entity;

public class StuHealth {
    private Long id_stu;
    private double height;
    private double weight;
    private String disease;

    public Long getStuId() {
        return id_stu;
    }
    public void setStuId(Long id) {
        id_stu = id;
    }

    public double getHeight() {
        return height;
    }
    public void setHeight(double  a) {height = a; }

    public double getWeight() {
        return weight;
    }
    public void setWeight(double  a) {weight = a; }

    public String getDisease() {
        return disease;
    }
    public void setDisease(String  a) {disease = a; }

}
