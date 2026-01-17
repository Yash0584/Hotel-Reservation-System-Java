<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>View All Rooms</title>
<style>
    body { font-family: Arial, sans-serif; margin: 40px; background-color: #fafafa; }
    h2 { color: #333; }
    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
    th, td { padding: 10px; text-align: left; border-bottom: 1px solid #ddd; }
    th { background-color: #1976d2; color: white; }
    tr:hover { background-color: #f1f1f1; }
    a { text-decoration: none; color: #1976d2; }
    .back { margin-top: 20px; display: inline-block; }
</style>
</head>
<body>

<h2>🏨 List of All Rooms</h2>

<%
    // JDBC connection
    String url = "jdbc:mysql://localhost:3306/hotel_db";
    String user = "root";
    String pass = "Yash@05"; // <-- change this to your MySQL password
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, user, pass);
        st = con.createStatement();
        rs = st.executeQuery("SELECT * FROM rooms");
%>

<table>
    <tr>
        <th>ID</th>
        <th>Room No</th>
        <th>Room Type</th>
        <th>Price (₹)</th>
        <th>Status</th>
    </tr>
<%
        while (rs.next()) {
%>
    <tr>
        <td><%= rs.getInt("room_id") %></td>
        <td><%= rs.getString("room_no") %></td>
        <td><%= rs.getString("room_type") %></td>
        <td><%= rs.getDouble("price") %></td>
        <td><%= rs.getString("status") %></td>
    </tr>
<%
        }
    } catch (Exception e) {
        out.println("<p style='color:red;'>Error: " + e.getMessage() + "</p>");
        e.printStackTrace();
    } finally {
        try { if (rs != null) rs.close(); } catch (Exception ex) {}
        try { if (st != null) st.close(); } catch (Exception ex) {}
        try { if (con != null) con.close(); } catch (Exception ex) {}
    }
%>
</table>

<a href="index.jsp" class="back">← Back to Home</a>

</body>
</html>