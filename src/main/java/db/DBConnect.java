package db;
import java.sql.*;

public class DBConnect {
    private static Connection con;

    public static Connection getConn() {
        try {
            if (con == null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_db", "root", "yourpassword");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}