<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Book Room</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<style>
  body{font-family:Inter,Arial;background:#f8fafc;margin:0;color:#0f172a}
  .wrap{max-width:720px;margin:36px auto;padding:20px}
  .card{background:white;border-radius:12px;padding:22px;box-shadow:0 8px 30px rgba(2,6,23,0.06)}
  h2{margin:0 0 8px 0}
  form{display:grid;gap:12px}
  input, select{padding:10px;border:1px solid #e6e9ef;border-radius:8px}
  .row{display:flex;gap:12px}
  .row > *{flex:1}
  .actions{display:flex;gap:12px;margin-top:12px}
  .btn{padding:10px 14px;border-radius:10px;border:none;font-weight:600;cursor:pointer}
  .btn.primary{background:#059669;color:white}
  .btn.ghost{background:transparent;border:1px solid #d1fae5;color:#059669}
</style>
</head>
<body>
  <div class="wrap">
    <div class="card">
      <h2>🧾 Book Room</h2>
      <p style="color:#6b7280">Fill details to confirm a booking.</p>

      <form action="BookRoomServlet" method="post">
        <div class="row">
          <div>
            <label>Customer Name</label><br>
            <input type="text" name="customer_name" required>
          </div>
          <div>
            <label>Room ID</label><br>
            <input type="number" name="room_id" id="room_id" value="<%= request.getParameter("room_id")==null ? "" : request.getParameter("room_id") %>" required>
          </div>
        </div>

        <div class="row">
          <div>
            <label>Check-in</label><br>
            <input type="date" name="checkin_date" required>
          </div>
          <div>
            <label>Check-out</label><br>
            <input type="date" name="checkout_date" required>
          </div>
        </div>

        <div class="actions">
          <button class="btn primary" type="submit">Confirm Booking</button>
          <a class="btn ghost" href="Viewroom.jsp">Cancel</a>
        </div>
      </form>
    </div>
  </div>
</body>
</html>