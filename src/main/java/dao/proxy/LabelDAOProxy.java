package dao.proxy;

import dao.LabelDAO;
import dao.impl.LabelDAOImpl;
import dbc.DatabaseConnection;
import vo.Label;

import java.sql.SQLException;
import java.util.List;

public class LabelDAOProxy implements LabelDAO {

    private DatabaseConnection dbc = null;
    private LabelDAO dao = null;        //接口类

    public LabelDAOProxy() throws Exception {
        this.dbc = new DatabaseConnection();        //实例化DatabaseConnection类
        this.dao = new LabelDAOImpl(this.dbc.getConnection());    //使用数据库连接初始化DAO实现类
    }

    @Override
    public List<Label> viewLabels() throws SQLException {
        List<Label> labels = null;
        try {
            labels = this.dao.viewLabels();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.dbc.close();
        }
        return labels;
    }

    @Override
    public boolean addLabel(String name) throws SQLException {
        boolean result = false;
        try {
            result = this.dao.addLabel(name);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.dbc.close();
        }
        return result;
    }

    @Override
    public boolean deleteLabel(int labelId) throws SQLException {
        boolean result = false;
        try {
            result = this.dao.deleteLabel(labelId);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.dbc.close();
        }
        return result;
    }

    @Override
    public Label findOneLabel(int labelId) throws SQLException {
        Label label = null;
        try {
            label = this.dao.findOneLabel(labelId);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.dbc.close();
        }
        return label;
    }
}
