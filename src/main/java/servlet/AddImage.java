package servlet;

import factory.DAOFactory;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import vo.Label;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddImage", urlPatterns = "/image/addImage")
public class AddImage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String encoding = "UTF-8";
        // 设置编码方式为utf-8
        request.setCharacterEncoding(encoding);
        response.setCharacterEncoding(encoding);
        // 设置客户端的解码方式为utf-8
        response.setContentType("text/html;charset=utf-8");

        FileItem fileItem = null; // 得到FileItem的集合Items
        DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setHeaderEncoding(encoding);

        // 获取每一个输入项，包括文件和普通输入项
        int labelId = 0;
        try {
            List<FileItem> list = upload.parseRequest(request); // 每一个FileItem对应一个Form表单的输入项
            for (FileItem item : list) {
                if (item.isFormField()) {   // 如果FileItem中封装的是普通输入项的数据，将输入项保存至变量中
                    String fieldName = item.getFieldName();
                    String value = item.getString();
                    if (fieldName.equals("labelId")) {
                        labelId = Integer.parseInt(value);
                        System.out.println("get label id successful, the id is " + value);
                    }
                } else {    // 表单输入是图片文件，将文件保存
                    fileItem = item;
                }
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }

        // 通过标签ID获取标签名
        Label label = null;
        try {
            label = DAOFactory.getLabelDAOInstance().findOneLabel(labelId);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 拼接形成图片路径
        String uploadPath = request.getServletContext().getRealPath("/");
        String labelName = label.getName();
        String imageName = fileItem.getName();// 获取的文件名可能包含路径信息
        imageName = imageName.substring(imageName.lastIndexOf("\\") + 1);// 从全路径中提取文件名
        String imagePath = "upload/" + labelName + "/" + imageName;
        String path = uploadPath + "/" + imagePath;
        String projectPath = "E:\\IdeaProjects\\ImageClassificationServer\\src\\main\\resources\\";
        String imageInProjectPath = uploadPath + "../../src/main/resources/" + imagePath;
        System.out.println(path);
        System.out.println(imageInProjectPath);

        // 保存图片并存入数据库
        File imageFile = new File(path);
        File imageInProject = new File(imageInProjectPath);
        try {
            fileItem.write(imageFile);
            DAOFactory.getImageDAOInstance().addImage(labelId, imageName, imagePath);
            FileUtils.copyFile(imageFile, imageInProject);
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println("ending````````````````````````````");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
