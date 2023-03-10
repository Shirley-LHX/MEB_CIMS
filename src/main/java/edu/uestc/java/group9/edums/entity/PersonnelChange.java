package edu.uestc.java.group9.edums.entity;

public class PersonnelChange {

    private Long ID; //序号
    private Long TeacherID; //教师ID
    private String Type; //异动类型
    private String PreviousTitle; //前职称
    private String PreviousWorkplace; //前工作单位
    private String CurrentTitle; //现职称
    private String CurrentWorkplace; //现工作单位
    private String Create_time; //操作时间

    public Long getId() { return ID; }
    public void setId(long Id) { this.ID = Id; }

    public Long getTeacherID() { return TeacherID; }
    public void setTeacherID(long TeacherId) { this.TeacherID = TeacherId; }

    public String getType() { return Type; }
    public void setType(String Type) { this.Type = Type; }

    public String getPreviousTitle() { return PreviousTitle; }
    public void setPreviousTitle(String PreviousTitle) { this.PreviousTitle = PreviousTitle; }

    public String getPreviousWorkplace() { return PreviousWorkplace; }
    public void setPreviousWorkplace(String PreviousWorkplace) { this.PreviousWorkplace = PreviousWorkplace; }

    public String getCurrentTitle() { return CurrentTitle; }
    public void setCurrentTitle(String CurrentTitle) { this.CurrentTitle = CurrentTitle; }

    public String getCurrentWorkplace() { return CurrentWorkplace; }
    public void setCurrentWorkplace(String CurrentWorkplace) { this.CurrentWorkplace = CurrentWorkplace; }

    public String getCreateTime() { return Create_time; }
    public void setCreateTime(String createTime){ this.Create_time = createTime; }

}
