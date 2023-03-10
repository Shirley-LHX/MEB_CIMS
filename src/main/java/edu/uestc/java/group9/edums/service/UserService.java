package edu.uestc.java.group9.edums.service;

import edu.uestc.java.group9.edums.entity.User;

import java.util.List;

public interface UserService {

    /**
     * 登录成功返回相应的 user，失败则返回 null。
     */
    User login(String username, String password);

    List<User> selectByPage(int page, int rows);

    User selectByID(Long ID);

    User selectByUsername(String username);

    void insert(User user);

    void deleteByUsername(String username);

    void deleteByID(Long ID);

    void update(User user);

}
