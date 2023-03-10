package edu.uestc.java.group9.edums.service.impl;

import edu.uestc.java.group9.edums.entity.User;
import edu.uestc.java.group9.edums.mapper.UserMapper;
import edu.uestc.java.group9.edums.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User login(String username, String password) {
        return userMapper.selectByUsernameAndPassword(username, password);
    }

    /**
     * page 从 1 开始
     */
    @Override
    public List<User> selectByPage(int page, int rows) {
        return userMapper.selectAll(rows * (page - 1), rows);
    }

    @Override
    public User selectByID(Long ID) {
        return userMapper.selectByID(ID);
    }

    @Override
    public User selectByUsername(String username) {
        return userMapper.selectByUsername(username);
    }

    @Override
    public void insert(User user) {
        userMapper.insert(user);
    }

    @Override
    public void deleteByUsername(String username) {
        userMapper.deleteByUsername(username);
    }

    @Override
    public void deleteByID(Long ID) {
        userMapper.deleteByID(ID);
    }

    @Override
    public void update(User user) {
        userMapper.update(user);
    }

}
