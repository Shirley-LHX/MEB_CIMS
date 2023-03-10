package edu.uestc.java.group9.edums.mapper;

import edu.uestc.java.group9.edums.entity.TeacherInformation;
import edu.uestc.java.group9.edums.entity.vo.TeacherVo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TeacherMapper {

    TeacherInformation queryByTeacherId(long teacherId);

    List<TeacherInformation> queryById(Long teacherId);

    void update(TeacherInformation teacherInformation);

    void insertTeacher(TeacherInformation teacherInformation);

    List<TeacherInformation> queryAll(@Param("offset") int offset, @Param("limit") int limit);

    List<TeacherVo> getSalary();

    void deleteByTeacherId(Long teacherId);
}
