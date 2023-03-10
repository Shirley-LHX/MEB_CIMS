package edu.uestc.java.group9.edums.mapper;

import edu.uestc.java.group9.edums.entity.PersonnelChange;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersonnelMapper {

    PersonnelChange queryById(long Id);

    List<PersonnelChange> queryByTeacherId(Long teacherId);

    void update(PersonnelChange personnelChange);

    void insertPC(PersonnelChange personnelChange);

    void deleteById(long Id);

    List<PersonnelChange> queryAll(@Param("offset") int offset, @Param("limit") int limit);

}
