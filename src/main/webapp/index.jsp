<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Hotel Management - Home</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<style>
  :root{
    --primary:#2563eb;
    --accent:#06b6d4;
    --muted:#6b7280;
    --card:#ffffff;
    --bg:#f3f4f6;
    --radius:12px;
  }
  body{font-family:Inter, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
       margin:0;background:linear-gradient(180deg,#eef2ff 0%,#f8fafc 100%);color:#111;}
  .container{max-width:980px;margin:36px auto;padding:20px;}
  header{display:flex;align-items:center;gap:16px;}
  .logo{
    width:64px;height:64px;border-radius:12px;background:linear-gradient(135deg,var(--primary),var(--accent));
    display:flex;align-items:center;justify-content:center;color:white;font-size:28px;box-shadow:0 8px 30px rgba(37,99,235,0.12);
  }
  h1{margin:0;font-size:26px;}
  .subtitle{color:var(--muted);margin-top:6px;font-size:14px}
  .grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:18px;margin-top:26px}
  .card{background:var(--card);border-radius:var(--radius);padding:18px;box-shadow:0 6px 18px rgba(15,23,42,0.06);display:flex;flex-direction:column;gap:12px}
  .card h3{margin:0;font-size:18px}
  .btn{
    display:inline-block;padding:10px 14px;border-radius:10px;background:var(--primary);color:#fff;text-decoration:none;font-weight:600;
    box-shadow:0 6px 18px rgba(37,99,235,0.12);
  }
  .btn.secondary{background:transparent;color:var(--primary);border:2px solid rgba(37,99,235,0.12)}
  footer{margin-top:28px;color:var(--muted);font-size:13px;text-align:center;}
  @media (max-width:420px){.logo{width:52px;height:52px;font-size:22px}}
</style>
</head>
<body>
  <div class="container">
    <header>
      <div class="logo">🏨</div>
      <div>
        <h1>Hotel Management System</h1>
        <div class="subtitle">Mini project • JSP + Servlet + JDBC — clean & responsive UI</div>
      </div>
    </header>

    <div class="grid">
      <div class="card">
        <h3>Add New Room</h3>
        <p style="color:var(--muted);margin:0">Create a new room entry (room number, type, price).</p>
        <div>
          <a class="btn" href="Addroom.jsp">Add Room</a>
        </div>
      </div>

      <div class="card">
        <h3>View Rooms</h3>
        <p style="color:var(--muted);margin:0">See current rooms and their status (Available / Booked).</p>
        <div>
          <a class="btn secondary" href="Viewroom.jsp">View All Rooms</a>
        </div>
      </div>

      <div class="card">
        <h3>Book a Room</h3>
        <p style="color:var(--muted);margin:0">Quickly book an available room for a customer.</p>
        <div>
          <a class="btn" href="book_room.jsp">Book Room</a>
        </div>
      </div>
<!-- 
      <div class="card">
        <h3>Database</h3>
        <p style="color:var(--muted);margin:0">MySQL backend · tables: <code>rooms</code>, <code>bookings</code>.</p>
        <div>
          <a class="btn secondary" href="Success.jsp">Sample Success</a>
        </div> -->
      </div>
    </div>

    
  </div>
</body>
</html>