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

    public List<User> selectAllUser() {
        try {
            Connection con = DataBaseUtil.getConnection();
            String sql = "select * from user";
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
}
