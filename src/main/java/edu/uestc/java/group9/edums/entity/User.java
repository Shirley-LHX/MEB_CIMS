package edu.uestc.java.group9.edums.entity;

public class User {

    /**
     * 自增
     */
    private Long ID;

    /**
     * 非空
     */
    private String username;

    /**
     * 非空
     */
    private String password;

    /**
     * 非空
     */
    private String avatar;

    /**
     * 非空
     */
    private String email;

    public Long getID() {
        return ID;
    }

    public void setID(Long ID) {
        this.ID = ID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
