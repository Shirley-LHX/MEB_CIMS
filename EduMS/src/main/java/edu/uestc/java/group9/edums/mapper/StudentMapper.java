package edu.uestc.java.group9.edums.mapper;

import edu.uestc.java.group9.edums.entity.StuEval;
import edu.uestc.java.group9.edums.entity.StuHealth;
import edu.uestc.java.group9.edums.entity.StuMessage;
import edu.uestc.java.group9.edums.entity.StuScore;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {

    /**
     * 通过id查询学籍信息
     *
     * @param ID
     * @return
     */
    StuMessage queryMsgById(Long ID);

    /**
     * 添加学籍信息
     *
     * @param stuMessagem
     */
    void InsertSM(StuMessage stuMessagem);

    /**
     * 更新学籍信息
     *
     * @param stuMessage
     */
    void updateSM(StuMessage stuMessage);

    /**
     * 查询所有学籍信息
     *
     * @param offset 起始查询位置
     * @param limit  查询条数
     * @return
     */
    List<StuMessage> queryAllMsg(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 按ID删除学籍信息
     *
     * @param ID
     */
    void deleteMsgById(Long ID);

    /**
     * 按ID查询综合评价
     *
     * @param ID
     * @return
     */
    StuEval queryEvlById(Long ID);

    void InsertSE(StuEval stuEval);

    void updateSE(StuEval stuEval);

    /**
     * 查询所有评价信息
     *
     * @param offset 起始查询位置
     * @param limit  查询条数
     * @return
     */
    List<StuEval> queryAllEvl(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 按ID删除评价信息
     *
     * @param ID
     */
    void deleteEvlById(Long ID);

    /**
     * 通过id查询成绩
     *
     * @param id
     * @return
     */
    StuScore queryScrById(@Param("id") Long id, @Param("t") int t);

    List<StuScore> queryScrByIdList(Long id);

    /**
     * 添加成绩
     *
     * @param stuScore
     */
    void InsertSS(StuScore stuScore);

    /**
     * 更新成绩
     *
     * @param stuScore
     */
    void updateSS(StuScore stuScore);

    /**
     * 查询所有成绩信息
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return
     */
    List<StuScore> queryAllScr(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 按ID和term删除成绩信息
     *
     * @param id
     */
    void deleteScrById(@Param("id") Long id, @Param("t") int t);


    StuHealth queryHeById(Long id);

    void InsertSH(StuHealth stuHealth);

    void updateSH(StuHealth stuHealth);

    List<StuHealth> queryAllHe(@Param("offset") int offset, @Param("limit") int limit);

    void deleteHeById(Long id);

}
