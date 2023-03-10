package edu.uestc.java.group9.edums.service.impl;

import edu.uestc.java.group9.edums.entity.Category;
import edu.uestc.java.group9.edums.mapper.CategoryMapper;
import edu.uestc.java.group9.edums.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("msCategoryService")
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;


    public List<Category> selectCategoruList() {
        return categoryMapper.selectCategoruList();
    }


    public Category selectByPrimaryKey(Integer id) {
        return categoryMapper.selectByPrimaryKey(id);
    }


}
