package dbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String DBDRIVER = "com.mysql.jdbc.Driver";
    private static final String DBURL = "jdbc:mysql://localhost:3306/imageclassification?characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&serverTimezone=GMT%2B8";
    private static final String DBUSER = "root";
    private static final String DBPASSWORD = "root";
    private Connection conn;

    public DatabaseConnection() throws ClassNotFoundException, SQLException {
        Class.forName(DBDRIVER);
        this.conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
    }

    public Connection getConnection() { // 返回连接
        return this.conn;
    }

    public void close() throws SQLException { // 关闭连接
        if (this.conn != null){
            this.conn.close();
        }
    }
}
