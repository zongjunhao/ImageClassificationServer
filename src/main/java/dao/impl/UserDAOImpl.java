package dao.impl;

import dao.UserDAO;
import vo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImpl implements UserDAO {

    private Connection conn = null; // 数据库连接对象
    private PreparedStatement pstmt = null; // 数据库操作对象

    public UserDAOImpl (Connection coon){ // 通过数据库连接初始化实现类
        this.conn = coon;
    }

    @Override
    public User findByEmail(String email) throws SQLException {
        User user = null;
        String sql = "select u_email, u_pwd from user where u_email = ?";
        this.pstmt = this.conn.prepareStatement(sql);
        this.pstmt.setString(1, email);
        ResultSet rs = this.pstmt.executeQuery();
        if (rs.next()){
            user = new User();
            user.setEmail(rs.getString(1));
            user.setPwd(rs.getString(2));
        }
        this.pstmt.close();
        return user;
    }

    @Override
    public boolean addUser(String account, String password, String email) throws SQLException {
        boolean flag = false;
        String sql = "insert into user(u_account, u_pwd, u_email) values (?, ?, ?)";
        this.pstmt = this.conn.prepareStatement(sql);
        this.pstmt.setString(1, account);
        this.pstmt.setString(2, password);
        this.pstmt.setString(3, email );
        if (this.pstmt.executeUpdate() > 0) {
            flag = true;
        }
        this.pstmt.close();
        return flag;
    }
}
