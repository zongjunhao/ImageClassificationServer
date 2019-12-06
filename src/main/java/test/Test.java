package test;

import factory.DAOFactory;
import vo.Admin;
import vo.Image;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
//        boolean flag = DAOFactory.getImageDAOInstance().deleteImage(4);
//        System.out.println(flag);
//        DAOFactory.getLabelDAOInstance().viewLabels();
//        int picNum = 5;
//        int labelId = 25;
//        String labelName = "zara_6096_451";
//        for (int i = 0; i < picNum; i++) {
//            String picName = labelName + "_" + (i + 1) + ".jpg";
//            DAOFactory.getImageDAOInstance().addImage(labelId, picName, "upload/" + labelName + "/" + picName);
//        }
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
//        String fileName = "test.jpg";
//        int index = fileName.lastIndexOf(".");
//        String newFileName = fileName.substring(0, index) + sdf.format(new Date()) + fileName.substring(index);
//        System.out.println(newFileName);
        Image image = DAOFactory.getImageDAOInstance().findOneImage(194);
        System.out.println(image.toString());
    }
}
