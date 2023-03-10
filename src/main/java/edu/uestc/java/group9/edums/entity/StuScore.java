package edu.uestc.java.group9.edums.entity;

public class StuScore {

    private Long id_stu;
    private int term;
    private int chinese;
    private int math;
    private int english;
    private int physical;
    private int chemical;
    private int biology;
    private int history;
    private int policy;
    private int geography;
    private int gym;

    public Long getStuId() {
        return id_stu;
    }
    public void setStuId(Long id) {
        id_stu = id;
    }

    public int getTerm() { return term; }
    public void setTerm(int a) {term = a; }

    public int getChinese() { return chinese; }
    public void setChinese(int a) {chinese = a; }

    public int getMath() { return math; }
    public void setMath(int a) {math = a; }

    public int getEnglish() { return english; }
    public void setEnglish(int a) {english = a; }

    public int getPhysical() { return physical; }
    public void setPhysical(int a) {physical = a; }

    public int getChemical() { return chemical; }
    public void setChemical(int a) {chemical = a; }

    public int getBiology() { return biology; }
    public void setBiology(int a) {biology = a; }

    public int getHistory() { return history; }
    public void setHistory(int a) {history = a; }

    public int getPolicy() { return policy; }
    public void setPolicy(int a) {policy = a; }

    public int getGeography() { return geography; }
    public void setGeography(int a) {geography = a; }

    public int getGym() { return gym; }
    public void setGym(int a) {gym = a; }

}
