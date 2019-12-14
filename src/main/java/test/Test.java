package test;

import factory.DAOFactory;
import kit.FileOperate;
import vo.Admin;
import vo.Image;

import java.io.*;
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
//        Image image = DAOFactory.getImageDAOInstance().findOneImage(194);
//        System.out.println(image.toString());
        // 保存当前时间至服务器和生成的安卓文件中，用于核对版本
//        String content = FileOperate.readTxt("C:\\Users\\zongjunhao\\Desktop\\test.txt");
//        System.out.println("content = " + content);
//        String time = String.valueOf(System.currentTimeMillis());
//        System.out.println("time = " + time);
//        FileOperate.writeTxt("C:\\Users\\zongjunhao\\Desktop\\test.txt", time);
//        content = FileOperate.readTxt("C:\\Users\\zongjunhao\\Desktop\\test.txt");
//        System.out.println("content = " + content);

        String androidVersionTxtPath = "E:\\Android-workspace\\ClassifyWithTFLite\\app\\src\\main\\assets\\version.txt";
        String serverVersionTxtPath = "E:\\IdeaProjects\\ImageClassificationServer\\target\\ImageClassificationServer\\version.txt";
        System.out.println(FileOperate.readTxt(androidVersionTxtPath).equals(FileOperate.readTxt(serverVersionTxtPath)));
    }

}
