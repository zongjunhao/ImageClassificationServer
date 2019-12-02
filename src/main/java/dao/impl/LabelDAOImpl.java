package dao.impl;

import dao.LabelDAO;
import vo.Label;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LabelDAOImpl implements LabelDAO {

    private Connection conn = null; // 数据库连接对象
    private PreparedStatement pstmt = null; // 数据库操作对象

    public LabelDAOImpl(Connection coon) { // 通过数据库连接初始化实现类
        this.conn = coon;
    }

    @Override
    public List<Label> viewLabels() throws SQLException {
        List<Label> labels = new ArrayList<Label>();
        String sql = "select * from label";
        this.pstmt = this.conn.prepareStatement(sql);
        ResultSet rs = this.pstmt.executeQuery();
        Label label = null;
        while (rs.next()){
            label = new Label();
            label.setId(rs.getInt(1));
            label.setName(rs.getString(2));
            label.setAddtime(rs.getTimestamp(3));
            label.setUpdatetime(rs.getTimestamp(4));
            labels.add(label);
            System.out.println(label);
        }
        this.pstmt.close();
        return labels;
    }

    @Override
    public boolean addLabel(String name) throws SQLException {
        boolean flag = false;
        String sql = "insert into label(l_name) values (?)";
        this.pstmt = this.conn.prepareStatement(sql);
        this.pstmt.setString(1, name);
        if (this.pstmt.executeUpdate() > 0) {
            flag = true;
        }
        this.pstmt.close();
        return flag;
    }

    @Override
    public boolean deleteLabel(int labelId) throws SQLException {
        boolean flag = false;
        String sql = "delete from label where i_id = " + labelId;
        this.pstmt = this.conn.prepareStatement(sql);
        if (this.pstmt.executeUpdate(sql) > 0) {
            flag = true;
        }
        this.pstmt.close();
        return flag;
    }
}
