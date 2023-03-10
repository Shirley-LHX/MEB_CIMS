package edu.uestc.java.group9.edums.service;

import edu.uestc.java.group9.edums.entity.StuEval;
import edu.uestc.java.group9.edums.entity.StuHealth;
import edu.uestc.java.group9.edums.entity.StuMessage;
import edu.uestc.java.group9.edums.entity.StuScore;

import java.util.List;

public interface StudentService {

    StuMessage getMsgById(Long ID);

    void insertSM(StuMessage stuMessage);

    void updateSM(StuMessage stuMessage);

    List<StuMessage> findAllMsg();

    void deleteMsgById(Long ID);

    StuEval getEvlById(Long ID);

    void insertSE(StuEval stuEval);

    void updateSE(StuEval stuEval);

    List<StuEval> findAllEvl();

    void deleteEvlById(Long ID);


    StuScore getScrById(Long id, int t);

    List<StuScore> getScrByIdList(Long id);

    void InsertSS(StuScore stuScore);

    void UpdateSS(StuScore stuScore);

    List<StuScore> findAllScr();

    void deleteScrById(Long id, int t);


    StuHealth getHeById(Long id);

    void InsertSH(StuHealth stuHealth);

    void UpdateSH(StuHealth stuHealth);

    List<StuHealth> findAllHe();

    void deleteHeById(Long id);


}
