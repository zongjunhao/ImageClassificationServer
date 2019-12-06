package dao;

import vo.Image;

import java.sql.SQLException;
import java.util.List;

public interface ImageDAO {
    List<Image> findByLabel(int labelId) throws SQLException;
    boolean addImage(int labelId, String name, String path) throws SQLException;
    boolean deleteImage(int imageId) throws SQLException;
    Image findOneImage(int imageId) throws SQLException;
}
