package dao.impl;

import dao.ImageDAO;
import vo.Image;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ImageDAOImpl implements ImageDAO {

    private Connection conn = null; // 数据库连接对象
    private PreparedStatement pstmt = null; // 数据库操作对象

    public ImageDAOImpl(Connection coon) { // 通过数据库连接初始化实现类
        this.conn = coon;
    }

    @Override
    public List<Image> findByLabel(int labelId) throws SQLException {
        List<Image> images = new ArrayList<Image>();
        String sql = "select * from image where i_l_id = ?";
        this.pstmt = this.conn.prepareStatement(sql);
        this.pstmt.setInt(1, labelId);
        ResultSet rs = this.pstmt.executeQuery();
        Image image = null;
        while (rs.next()) {
            image = new Image();
            image.setId(rs.getInt(1));
            image.setLabelId(rs.getInt(2));
            image.setName(rs.getString(3));
            image.setPath(rs.getString(4));
            image.setAddtime(rs.getTimestamp(5));
            image.setUpdatetime(rs.getTimestamp(6));
            images.add(image);
        }
        this.pstmt.close();
        return images;
    }

    @Override
    public boolean addImage(int labelId, String name, String path) throws SQLException {
        boolean flag = false;
        String sql = "insert into image(i_l_id, i_name, i_path) values (?, ?, ?)";
        this.pstmt = this.conn.prepareStatement(sql);
        this.pstmt.setInt(1, labelId);
        this.pstmt.setString(2, name);
        this.pstmt.setString(3, path);
        if (this.pstmt.executeUpdate() > 0) {
            flag = true;
        }
        this.pstmt.close();
        return flag;
    }

    @Override
    public boolean deleteImage(int imageId) throws SQLException {
        boolean flag = false;
        String sql = "delete from image where i_id = " + imageId;
        this.pstmt = this.conn.prepareStatement(sql);
        if (this.pstmt.executeUpdate(sql) > 0) {
            flag = true;
        }
        this.pstmt.close();
        return flag;
    }

    @Override
    public Image findOneImage(int imageId) throws SQLException {
        Image image = null;
        String sql = "select * from image where i_id = " + imageId;
        this.pstmt = this.conn.prepareStatement(sql);
        ResultSet rs = this.pstmt.executeQuery();
        if (rs.next()) {
            image = new Image();
            image.setId(rs.getInt(1));
            image.setLabelId(rs.getInt(2));
            image.setName(rs.getString(3));
            image.setPath(rs.getString(4));
            image.setAddtime(rs.getTimestamp(5));
            image.setUpdatetime(rs.getTimestamp(6));
        }
        this.pstmt.close();
        return image;
    }

}
