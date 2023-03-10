package edu.uestc.java.group9.edums.service;
import edu.uestc.java.group9.edums.entity.TeacherInformation;
import edu.uestc.java.group9.edums.entity.vo.TeacherVo;

import java.util.List;

public interface TeacherService {

    TeacherInformation getByTeacherId(long teacherId);

    List<TeacherInformation> getById(Long teacherId);

    void insertOrUpdate(TeacherInformation teacherInformation);

    List<TeacherInformation> findAll();

    List<TeacherVo> getSalary();

    void deleteByTeacherId(Long teacherId);
}
