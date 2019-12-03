package dao;

import vo.Label;

import java.sql.SQLException;
import java.util.List;

public interface LabelDAO {
    List<Label> viewLabels() throws SQLException;
    boolean addLabel(String name) throws SQLException;
    boolean deleteLabel(int labelId) throws SQLException;
    Label findOneLabel(int labelId) throws SQLException;
}
