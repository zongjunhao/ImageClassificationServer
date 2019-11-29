package factory;

import dao.AdminDAO;
import dao.ImageDAO;
import dao.LabelDAO;
import dao.UserDAO;
import dao.proxy.AdminDAOProxy;
import dao.proxy.ImageDAOProxy;
import dao.proxy.LabelDAOProxy;
import dao.proxy.UserDAOProxy;

public class DAOFactory {
    public static AdminDAO getAdminDAOInstance() throws Exception { // 取得DAO实现
        return new AdminDAOProxy(); // 取得代理实现
    }

    public static ImageDAO getImageDAOInstance() throws Exception {
        return new ImageDAOProxy();
    }

    public static LabelDAO getLabelDAOInstance() throws Exception {
        return new LabelDAOProxy();
    }

    public static UserDAO getUserDAOInstance() throws Exception {
        return new UserDAOProxy();
    }
}
