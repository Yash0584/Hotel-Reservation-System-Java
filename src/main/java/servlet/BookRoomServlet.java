package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import db.DBConnect;

public class BookRoomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String customer_name = req.getParameter("customer_name");
        int room_id = Integer.parseInt(req.getParameter("room_id"));
        String checkin = req.getParameter("checkin_date");
        String checkout = req.getParameter("checkout_date");

        try {
            Connection con = DBConnect.getConn();
            con.setAutoCommit(false); // to ensure both operations succeed

            // 1️⃣ Insert booking
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO bookings (customer_name, room_id, checkin_date, checkout_date) VALUES (?, ?, ?, ?)"
            );
            ps.setString(1, customer_name);
            ps.setInt(2, room_id);
            ps.setString(3, checkin);
            ps.setString(4, checkout);
            ps.executeUpdate();

            // 2️⃣ Update room status
            PreparedStatement ps2 = con.prepareStatement(
                "UPDATE rooms SET status = 'Booked' WHERE room_id = ?"
            );
            ps2.setInt(1, room_id);
            ps2.executeUpdate();

            con.commit();
            res.sendRedirect("success.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}