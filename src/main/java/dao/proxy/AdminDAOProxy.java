package dao.proxy;

import dao.AdminDAO;
import dao.impl.AdminDAOImpl;
import dbc.DatabaseConnection;
import vo.Admin;

import java.sql.SQLException;

public class AdminDAOProxy implements AdminDAO {

    private DatabaseConnection dbc = null;
    private AdminDAO dao = null;        //接口类

    public AdminDAOProxy() throws Exception {
        this.dbc = new DatabaseConnection();		//实例化DatabaseConnection类
        this.dao = new AdminDAOImpl(this.dbc.getConnection());	//使用数据库连接初始化DAO实现类
    }

    @Override
    public Admin findByAccount(String account) throws SQLException {
        Admin admin = null;
        try {
            admin = this.dao.findByAccount(account);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.dbc.close();
        }
        return admin;
    }
}
