package edu.uestc.java.group9.edums.service;

import edu.uestc.java.group9.edums.entity.PersonnelChange;

import java.util.List;

public interface PersonnelService {

    PersonnelChange getById(long Id);

    List<PersonnelChange> getByTeacherId(Long teacherId);

    void Update(PersonnelChange personnelChange);

    void Insert(PersonnelChange personnelChange);

    List<PersonnelChange> findAll();

    void deleteById(long Id);

}
