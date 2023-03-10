package edu.uestc.java.group9.edums.service;


import edu.uestc.java.group9.edums.entity.Equipment;
import edu.uestc.java.group9.edums.entity.PageBean;

import java.util.List;

public interface EquipmentService {

    /**
     * 添加设备
     */
    void insertEquipment(Equipment Equipment);

    /**
     * 通过主键下架设备(逻辑删除)
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * 根据 id 查询资源
     */
    Equipment selectByID(int id);

    /**
     * 更新设备
     */
    int updateByPrimaryKeySelective(Equipment record);


    /**
     * 能查询某个字段并分页显示所有未下架设备
     */
    PageBean<Equipment> selectByPage(String title, String author, int currentPage);

    /**
     * 查询所有未下架的设备
     *
     * @return
     */
    int selectCount();


    /**
     * 最近上架的设备(最近2个月)
     */
    List<Equipment> selectNewEquipment();


    /**
     * 所有下架的设备
     */
    List<Equipment> selectEquipmentDel();


    /**
     * 重新上架设备
     */
    int updateBackEquipment(int id);


    /**
     * 彻底删除设备
     */
    int deleteEquipmentReal(int id);
}
