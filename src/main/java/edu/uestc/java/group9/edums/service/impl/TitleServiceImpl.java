package edu.uestc.java.group9.edums.service.impl;

import edu.uestc.java.group9.edums.entity.Title;
import edu.uestc.java.group9.edums.mapper.TitleMapper;
import edu.uestc.java.group9.edums.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TitleServiceImpl implements TitleService {
    @Autowired
    TitleMapper titleMapper;
    public List<Title> findAll() {
        return titleMapper.queryAll(0,100);
    }

    public Title getByTitleName(String titleName) {
        return titleMapper.queryByTitleName(titleName);
    }
    public void Update(Title title) {
            titleMapper.update(title);
    }
}
