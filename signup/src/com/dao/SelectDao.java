package com.dao;

import com.user.User;
import com.util.DataBaseUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ASUS on 2017/3/21.
 */
public class SelectDao {

    private List<User> list = new ArrayList<User>();
    private int count = 0;

    public List<User> selectAllUser() {
        try {
            Connection con = DataBaseUtil.getConnection();
            String sql = "SELECT * FROM user";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet set = ps.executeQuery();
            while (set.next()) {
                User user = new User();
                user.setId(set.getString("id"));
                user.setUsername(set.getString("username"));
                user.setPassword(set.getString("password"));
                user.setType(set.getString("type"));
                list.add(user);
            }
            set.close();
            ps.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return list;
    }


    public User selectUser(User user) {
        try {
            Connection connection = DataBaseUtil.getConnection();
            String sql = "SELECT * FROM user WHERE id=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getId());
            ResultSet set = ps.executeQuery();
            while (set.next()) {
                user.setUsername(set.getString("username"));
                user.setPassword(set.getString("password"));
                user.setType(set.getString("type"));
            }
            set.close();
            ps.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public int countUser() {

        try {
            Connection connection = DataBaseUtil.getConnection();
            String countSql = "SELECT COUNT(*) FROM jspclass.user";
            PreparedStatement ps = connection.prepareStatement(countSql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
            rs.close();
            ps.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }

    public List<User> limitUser(int page) {
        List<User> listUser = new ArrayList<>();
        try {
            Connection connection = DataBaseUtil.getConnection();
            String sql = "SELECT * FROM jspclass.user LIMIT ?,?;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (page - 1) * User.PAGE);
            ps.setInt(2, User.PAGE);
            ResultSet set = ps.executeQuery();
            while (set.next()) {
                User user = new User();
                user.setId(set.getString("id"));
                user.setUsername(set.getString("username"));
                user.setPassword(set.getString("password"));
                user.setType(set.getString("type"));
                listUser.add(user);
            }
            set.close();
            ps.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listUser;
    }
}
