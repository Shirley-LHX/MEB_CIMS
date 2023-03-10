package edu.uestc.java.group9.edums.service.impl;

import edu.uestc.java.group9.edums.entity.PersonnelChange;
import edu.uestc.java.group9.edums.mapper.PersonnelMapper;
import edu.uestc.java.group9.edums.service.PersonnelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonnelServiceImpl implements PersonnelService {

    @Autowired
    PersonnelMapper personnelMapper;

    public PersonnelChange getById(long Id){ return personnelMapper.queryById(Id); }

    public List<PersonnelChange> getByTeacherId(Long teacherId) {
        return personnelMapper.queryByTeacherId(teacherId);
    }

    public void Update(PersonnelChange personnelChange) {
        if(personnelChange.getId() != null){
            personnelMapper.update(personnelChange);
        }
    }

    public void Insert(PersonnelChange personnelChange) {
        personnelMapper.insertPC(personnelChange);
    }

    public List<PersonnelChange> findAll() {
        return personnelMapper.queryAll(0,100);
    }

    public void deleteById(long Id){
        personnelMapper.deleteById(Id);
    }

}
