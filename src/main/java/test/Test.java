package test;

import factory.DAOFactory;
import vo.Admin;
import vo.Image;

import java.sql.SQLException;
import java.util.List;

public class Test {
    public static void main(String[] args) throws Exception {
//        Admin admin = DAOFactory.getAdminDAOInstance().findByAccount("123465");
//        System.out.println(admin.getAccount()+"  "+admin.getPassword());
//        List<Image> images = DAOFactory.getImageDAOInstance().findByLabel(1);
//        for (Image image : images) {
//            System.out.println(image.toString());
//        }
//        boolean flag = DAOFactory.getImageDAOInstance().addImage(1, "testimage", "testpath");
//        System.out.println(flag);
        boolean flag = DAOFactory.getImageDAOInstance().deleteImage(4);
        System.out.println(flag);
    }
}
