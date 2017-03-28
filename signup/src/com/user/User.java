package com.user;

/**
 * Created by ASUS on 2017/3/15.
 */
public class User {
    private String id;
    private String username;
    private String password;
    private String type;

    public static final int PAGE=2;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return username+"\t"+password+"\t"+type+"\t"+id;
    }
}
