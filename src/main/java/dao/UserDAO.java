package dao;

import vo.User;

import java.sql.SQLException;

public interface UserDAO {
    public User findByEmail(String email) throws SQLException;
    public boolean addUser(String account, String password, String email) throws SQLException;
}
