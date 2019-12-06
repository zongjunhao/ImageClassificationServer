package dao.proxy;

import dao.ImageDAO;
import dao.impl.ImageDAOImpl;
import dbc.DatabaseConnection;
import vo.Image;
import vo.Label;

import java.sql.SQLException;
import java.util.List;

public class ImageDAOProxy implements ImageDAO {

    private DatabaseConnection dbc = null;
    private ImageDAO dao = null;        //接口类

    public ImageDAOProxy() throws Exception {
        this.dbc = new DatabaseConnection();		//实例化DatabaseConnection类
        this.dao = new ImageDAOImpl(this.dbc.getConnection());	//使用数据库连接初始化DAO实现类
    }

    @Override
    public List<Image> findByLabel(int labelId) throws SQLException {
        List<Image> images = null;
        try {
            images = this.dao.findByLabel(labelId);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.dbc.close();
        }
        return images;
    }

    @Override
    public boolean addImage(int labelId, String name, String path) throws SQLException {
        boolean flag = false;
        try {
            flag = this.dao.addImage(labelId, name, path);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            this.dbc.close();
        }
        return flag;
    }

    @Override
    public boolean deleteImage(int imageId) throws SQLException {
        boolean flag = false;
        try {
            flag = this.dao.deleteImage(imageId);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            this.dbc.close();
        }
        return flag;
    }

    @Override
    public Image findOneImage(int imageId) throws SQLException {
        Image image = null;
        try {
            image = this.dao.findOneImage(imageId);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.dbc.close();
        }
        return image;
    }
}
