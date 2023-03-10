package edu.uestc.java.group9.edums.mapper;

import edu.uestc.java.group9.edums.entity.Title;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TitleMapper {
    List<Title> queryAll(@Param("offset") int offset, @Param("limit") int limit);
    Title queryByTitleName(String titleName);
    void update(Title title);
}
