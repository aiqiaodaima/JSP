package com.dao;

import com.user.User;
import com.util.DataBaseUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by ASUS on 2017/3/21.
 */
public class DelectDao {
    public void delectUser(User user) {
        try {
            Connection con = DataBaseUtil.getConnection();
            String sql = "DELETE FROM user WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
