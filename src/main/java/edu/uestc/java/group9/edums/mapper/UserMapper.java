package edu.uestc.java.group9.edums.mapper;

import edu.uestc.java.group9.edums.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {

    /**
     * 登录成功返回相应的 user，失败则返回 null。
     */
    User selectByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    List<User> selectAll(@Param("offset") int offset, @Param("limit") int limit);

    User selectByID(Long ID);

    User selectByUsername(String username);

    void insert(User user);

    void deleteByUsername(String username);

    void deleteByID(Long ID);

    void update(User user);

}
