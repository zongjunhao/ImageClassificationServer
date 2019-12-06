package servlet;

import factory.DAOFactory;
import vo.Image;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DeleteImage", urlPatterns = "/image/deleteImage")
public class DeleteImage extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码方式为utf-8
        response.setCharacterEncoding("UTF-8");
        //设置客户端的解码方式为utf-8
        response.setContentType("text/html;charset=utf-8");

        System.out.println("/image/deleteImage");
        int imageId = Integer.parseInt(request.getParameter("imageId"));

        System.out.println("flag1");
        boolean success = false;
        Image image = null;
        try {
            image = DAOFactory.getImageDAOInstance().findOneImage(imageId);
            success = DAOFactory.getImageDAOInstance().deleteImage(imageId);
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println("flag2");
        String rootPath = request.getServletContext().getRealPath("/");// 获取所在目录路径
        String imagePath = image.getPath();
        String path = rootPath + "/" + imagePath;
        System.out.println(path);
        File imageFile = new File(path);
        boolean deleteSuccess = imageFile.delete();
        System.out.println(deleteSuccess);
        System.out.println("flag3");
        PrintWriter out = response.getWriter();
        if (success) {
            out.write("success");
        } else {
            out.write("fail");
        }
        System.out.println("flag4");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
}
