package edu.uestc.java.group9.edums.service.impl;

import edu.uestc.java.group9.edums.entity.TeacherInformation;
import edu.uestc.java.group9.edums.entity.vo.TeacherVo;
import edu.uestc.java.group9.edums.mapper.TeacherMapper;
import edu.uestc.java.group9.edums.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherServiceImpl implements TeacherService {
    @Autowired
    TeacherMapper teacherMapper;

    public TeacherInformation getByTeacherId(long teacherId) {
        return teacherMapper.queryByTeacherId(teacherId);
    }

    public List<TeacherInformation> getById(Long teacherId){
        return teacherMapper.queryById(teacherId);
    }

    public void insertOrUpdate(TeacherInformation teacherInformation) {
        if(teacherInformation.getTeacherId() != null){
            teacherMapper.update(teacherInformation);
        }else{
            teacherMapper.insertTeacher(teacherInformation);
        }
    }
    public List<TeacherInformation> findAll() {
        return teacherMapper.queryAll(0,100);
    }

    public List<TeacherVo> getSalary() {
        return teacherMapper.getSalary();
    }

    public void deleteByTeacherId(Long teacherId) {
        teacherMapper.deleteByTeacherId(teacherId);
    }
}
