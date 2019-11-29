package dao.proxy;

import dao.UserDAO;
import dao.impl.UserDAOImpl;
import dbc.DatabaseConnection;
import vo.User;

import java.sql.SQLException;

public class UserDAOProxy implements UserDAO {

    private DatabaseConnection dbc = null;
    private UserDAO dao = null;        //接口类

    public UserDAOProxy() throws Exception {
        this.dbc = new DatabaseConnection();        //实例化DatabaseConnection类
        this.dao = new UserDAOImpl(this.dbc.getConnection());    //使用数据库连接初始化DAO实现类
    }

    @Override
    public User findByEmail(String email) throws SQLException {
        User user = null;
        try {
            user = this.dao.findByEmail(email);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.dbc.close();
        }
        return user;
    }

    @Override
    public boolean addUser(String account, String password, String email) throws SQLException {
        boolean result = false;
        try {
            result = this.dao.addUser(account, password, email);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.dbc.close();
        }
        return result;
    }
}
