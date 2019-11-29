package dao;

import vo.Admin;

import java.sql.SQLException;

public interface AdminDAO {
    public Admin findByAccount(String account) throws SQLException; // 查询管理员账号
}
