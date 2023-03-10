package edu.uestc.java.group9.edums.mapper;

import edu.uestc.java.group9.edums.entity.Equipment;

import java.util.List;
import java.util.Map;

public interface EquipmentMapper {
    /**
     * 通过主键删除(逻辑删除)
     *
     * @param id
     * @return
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * 插入书籍
     *
     * @param record
     * @return
     */
    int insert(Equipment record);

    /**
     * 插入书籍
     *
     * @param record
     * @return
     */
    int insertSelective(Equipment record);

    Equipment selectByPrimaryKey(Integer id);

    /**
     * 通过主键更新书籍
     *
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Equipment record);


    int updateByPrimaryKey(Equipment record);


    /**
     * 分页查询
     *
     * @param map
     * @return
     */
    List<Equipment> selectByPage(Map<String, Object> map);

    /**
     * 查询总数
     *
     * @return
     */
    int selectCount();


    /**
     * 最近上架的图书(最近2个月)
     */
    List<Equipment> selectNewEquipment();


    /**
     * 所有下架的图书
     */
    List<Equipment> selectEquipmentDel();


    /**
     * 重新上架图书
     */
    int updateBackEquipment(int id);


    /**
     * 彻底删除图书
     */
    int deleteEquipmentReal(int id);


}