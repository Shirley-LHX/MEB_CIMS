package edu.uestc.java.group9.edums.service;

import edu.uestc.java.group9.edums.entity.Category;

import java.util.List;

public interface CategoryService {

    /**
     * 查询所有的目录
     *
     * @return
     */
    List<Category> selectCategoruList();

    /**
     * 通过主键查询目录
     *
     * @param id
     * @return
     */
    Category selectByPrimaryKey(Integer id);
}
