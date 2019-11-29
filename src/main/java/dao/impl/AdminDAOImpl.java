package dao.impl;

import dao.AdminDAO;
import vo.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAOImpl implements AdminDAO {

    private Connection conn = null; // 数据库连接对象
    private PreparedStatement pstmt = null; // 数据库操作对象

    public AdminDAOImpl (Connection coon){ // 通过数据库连接初始化实现类
        this.conn = coon;
    }

    @Override
    public Admin findByAccount(String account) throws SQLException {
        Admin admin = null;
        String sql = "select a_account, a_pwd from admin where a_account = ?";
        this.pstmt = this.conn.prepareStatement(sql);
        this.pstmt.setString(1, account);
        ResultSet rs = this.pstmt.executeQuery();
        if (rs.next()){
            admin = new Admin();
            admin.setAccount(rs.getString(1));
            admin.setPassword(rs.getString(2));
        }
        this.pstmt.close();
        return admin;
    }
}
