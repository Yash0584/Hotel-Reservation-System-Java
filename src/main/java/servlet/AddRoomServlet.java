package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;
import db.DBConnect;

@WebServlet("/AddRoomServlet")
public class AddRoomServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        // ensure correct encoding for incoming form data
        req.setCharacterEncoding("UTF-8");
        res.setCharacterEncoding("UTF-8");

        String room_no = req.getParameter("room_no");
        String type = req.getParameter("room_type");
        String priceStr = req.getParameter("price");

        if (room_no == null || room_no.trim().isEmpty() ||
            type == null || type.trim().isEmpty() ||
            priceStr == null || priceStr.trim().isEmpty()) {
            // bad request - send back to form or show error
            res.sendError(HttpServletResponse.SC_BAD_REQUEST, "All fields are required.");
            return;
        }

        double price;
        try {
            price = Double.parseDouble(priceStr.trim());
        } catch (NumberFormatException ex) {
            res.sendError(HttpServletResponse.SC_BAD_REQUEST, "Price must be a valid number.");
            return;
        }

        // Insert into DB using try-with-resources
        String sql = "INSERT INTO rooms (room_no, room_type, price, status) VALUES (?, ?, ?, 'Available')";
        try (Connection con = DBConnect.getConn();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, room_no.trim());
            ps.setString(2, type.trim());
            ps.setDouble(3, price);
            ps.executeUpdate();

            // Redirect to success page (relative to web root)
            res.sendRedirect(req.getContextPath() + "/success.jsp");

        } catch (Exception e) {
            // log and rethrow as ServletException to show error in server logs
            log("Error in AddRoomServlet", e);
            throw new ServletException(e);
        }
    }
}