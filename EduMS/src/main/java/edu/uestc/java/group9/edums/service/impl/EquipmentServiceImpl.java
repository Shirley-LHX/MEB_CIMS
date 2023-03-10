package edu.uestc.java.group9.edums.service.impl;

import edu.uestc.java.group9.edums.entity.Equipment;
import edu.uestc.java.group9.edums.entity.PageBean;
import edu.uestc.java.group9.edums.mapper.EquipmentMapper;
import edu.uestc.java.group9.edums.service.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service("msEquipmentService")
public class EquipmentServiceImpl implements EquipmentService {

    @Autowired
    private EquipmentMapper equipmentMapper;


    public void insertEquipment(Equipment Equipment) {
        equipmentMapper.insert(Equipment);
    }


    /**
     * 分页显示书籍
     */
    public PageBean<Equipment> selectByPage(String title, String author, int currentPage) {
        HashMap<String, Object> map = new HashMap<String, Object>();
        PageBean<Equipment> pageBean = new PageBean<Equipment>();

        //设置当前页数
        pageBean.setCurrPage(currentPage);

        //设置每页显示的数据
        int pageSize = 50;
        pageBean.setPageSize(pageSize);

        //设置总页数
        int totalCount = equipmentMapper.selectCount();
        pageBean.setTotalCount(totalCount);

        //设置总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);
        pageBean.setTotalPage(num.intValue());

        map.put("start", (currentPage - 1) * pageSize);
        map.put("size", pageBean.getPageSize());
        map.put("author", author);
        map.put("title", title);

        //封装每页显示的数据
        List<Equipment> EquipmentList = equipmentMapper.selectByPage(map);
        pageBean.setLists(EquipmentList);

        return pageBean;
    }


    public int selectCount() {
        return equipmentMapper.selectCount();
    }


    public Equipment selectByID(int id) {
        return equipmentMapper.selectByPrimaryKey(id);
    }

    public int updateByPrimaryKeySelective(Equipment record) {
        return equipmentMapper.updateByPrimaryKeySelective(record);
    }


    public int deleteByPrimaryKey(Integer id) {
        return equipmentMapper.deleteByPrimaryKey(id);
    }


    public List<Equipment> selectNewEquipment() {
        return equipmentMapper.selectNewEquipment();
    }


    public List<Equipment> selectEquipmentDel() {
        return equipmentMapper.selectEquipmentDel();
    }


    public int updateBackEquipment(int id) {
        return equipmentMapper.updateBackEquipment(id);
    }


    public int deleteEquipmentReal(int id) {
        return equipmentMapper.deleteEquipmentReal(id);
    }


}
