package edu.uestc.java.group9.edums.service;

import edu.uestc.java.group9.edums.entity.Title;

import java.util.List;

public interface TitleService {

    List<Title> findAll();

    Title getByTitleName(String titleName);

    void Update(Title title);
}
