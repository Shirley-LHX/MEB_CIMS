package edu.uestc.java.group9.edums.service.impl;

import edu.uestc.java.group9.edums.entity.StuEval;
import edu.uestc.java.group9.edums.entity.StuHealth;
import edu.uestc.java.group9.edums.entity.StuMessage;
import edu.uestc.java.group9.edums.entity.StuScore;
import edu.uestc.java.group9.edums.mapper.StudentMapper;
import edu.uestc.java.group9.edums.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("stuService")
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentMapper studentMapper;

    public StuMessage getMsgById(Long ID) {
        return studentMapper.queryMsgById(ID);
    }

    public void insertSM(StuMessage stuMessage) {
        studentMapper.InsertSM(stuMessage);
    }

    public void updateSM(StuMessage stuMessage) {
        studentMapper.updateSM(stuMessage);
    }

    public List<StuMessage> findAllMsg() {
        return studentMapper.queryAllMsg(0, 100);
    }

    public void deleteMsgById(Long ID) {
        studentMapper.deleteMsgById(ID);
    }

    public StuEval getEvlById(Long ID) {
        return studentMapper.queryEvlById(ID);
    }

    public void insertSE(StuEval stuEval) {
        studentMapper.InsertSE(stuEval);
    }

    public void updateSE(StuEval stuEval) {
        studentMapper.updateSE(stuEval);
    }

    public List<StuEval> findAllEvl() {
        return studentMapper.queryAllEvl(0, 100);
    }

    public void deleteEvlById(Long ID) {
        studentMapper.deleteEvlById(ID);
    }

    public StuScore getScrById(Long id, int t) {
        return studentMapper.queryScrById(id, t);
    }

    public List<StuScore> getScrByIdList(Long id) {return studentMapper.queryScrByIdList(id);}

    public void InsertSS(StuScore stuScore) {
        studentMapper.InsertSS(stuScore);
    }

    public void UpdateSS(StuScore stuScore) {
        studentMapper.updateSS(stuScore);
    }

    public List<StuScore> findAllScr() {
        return studentMapper.queryAllScr(0, 100);
    }

    public void deleteScrById(Long id, int t) {
        studentMapper.deleteScrById(id, t);
    }


    public StuHealth getHeById(Long id) {
        return studentMapper.queryHeById(id);
    }

    public void InsertSH(StuHealth stuHealth) {
        studentMapper.InsertSH(stuHealth);
    }

    public void UpdateSH(StuHealth stuHealth) {
        studentMapper.updateSH(stuHealth);
    }

    public List<StuHealth> findAllHe() {
        return studentMapper.queryAllHe(0, 100);
    }

    public void deleteHeById(Long id) {
        studentMapper.deleteHeById(id);
    }


}
