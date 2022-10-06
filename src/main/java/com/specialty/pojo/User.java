package com.specialty.pojo;

public class User {
    private Integer userId;
    private String userName;
    private Integer  sex;
    private String password;
    private String phone;
    private String email;
    private double money;
    private String userImg;

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", sex=" + sex +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", money=" + money +
                ", userImg='" + userImg + '\'' +
                '}';
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getUserImg() {
        return userImg;
    }

    public void setUserImg(String userImg) {
        this.userImg = userImg;
    }

    public User(Integer userId, String userName, Integer sex, String password, String phone, String email, double money, String userImg) {
        this.userId = userId;
        this.userName = userName;
        this.sex = sex;
        this.password = password;
        this.phone = phone;
        this.email = email;
        this.money = money;
        this.userImg = userImg;
    }

    public User() {
    }
}
