package servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import db.DBConnect;

public class ViewRoomsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        try {
            Connection con = DBConnect.getConn();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM rooms");

            out.println("<h2>Room List</h2>");
            out.println("<table border='1'><tr><th>ID</th><th>Room No</th><th>Type</th><th>Price</th><th>Status</th></tr>");
            while (rs.next()) {
                out.println("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+
                            "</td><td>"+rs.getDouble(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
            }
            out.println("</table>");
        } catch (Exception e) {
            e.printStackTrace(out);
        }
    }
}