package edu.uestc.java.group9.edums.entity;

public class Title {
    private String TitleName;

    private String BasicSalary ;

    private String GradeSalary;

    private String PerformanceSalary;

    public void setTitleName(String TitleName) {
        this.TitleName = TitleName;
    }
    public String getTitleName() {
        return TitleName;
    }

    public void setBasicSalary(String BasicSalary) {
        this.BasicSalary = BasicSalary;
    }
    public String getBasicSalary() {
        return BasicSalary;
    }

    public void setGradeSalary(String GradeSalary) {
        this.GradeSalary = GradeSalary;
    }
    public String getGradeSalary() {
        return GradeSalary;
    }

    public void setPerformanceSalary(String PerformanceSalary) {
        this.PerformanceSalary = PerformanceSalary;
    }
    public String getPerformanceSalary() { return PerformanceSalary; }
}
