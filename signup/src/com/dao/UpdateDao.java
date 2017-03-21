package com.dao;

import com.user.User;
import com.util.DataBaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by ASUS on 2017/3/21.
 */
public class UpdateDao {

    public User updateuser(User user) {
        int row = 0;
        try {
            System.out.println("id is "+user.getId());
            Connection connection = DataBaseUtil.getConnection();
            String sql = "update user set username=?,password=?,type=? where id=?;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getType());
            ps.setString(4, user.getId());
            System.out.println(user.toString());
           row= ps.executeUpdate();

            System.out.println("row is "+  row);
            ps.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
