<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Room</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<style>
  body{font-family:Inter,Arial;margin:0;background:#f8fafc;color:#0f172a}
  .wrap{max-width:720px;margin:36px auto;padding:20px}
  .card{background:white;border-radius:12px;padding:22px;box-shadow:0 8px 30px rgba(2,6,23,0.06)}
  h2{margin:0 0 8px 0}
  form{display:grid;grid-template-columns:1fr 1fr;gap:12px}
  label{font-size:13px;color:#374151}
  input[type=text], input[type=number], select, input[type=date]{
    padding:10px;border:1px solid #e6e9ef;border-radius:8px;font-size:14px;width:100%;box-sizing:border-box;
  }
  .full{grid-column:1/-1}
  .actions{display:flex;gap:12px;margin-top:12px;align-items:center}
  .btn{padding:10px 14px;border-radius:10px;border:none;font-weight:600;cursor:pointer}
  .btn.primary{background:#2563eb;color:white}
  .btn.ghost{background:transparent;border:1px solid #c7d2fe;color:#2563eb}
  .hint{color:#6b7280;font-size:13px}
  @media(max-width:640px){form{grid-template-columns:1fr}}
</style>
<script>
  function validateForm(e){
    const roomNo = document.getElementById('room_no').value.trim();
    const price = document.getElementById('price').value.trim();
    if(!roomNo || !price){ alert('Please enter room number and price'); e.preventDefault(); return false; }
    if(isNaN(price) || Number(price) <= 0){ alert('Price must be a positive number'); e.preventDefault(); return false; }
    return true;
  }
</script>
</head>
<body>
  <div class="wrap">
    <div class="card">
      <h2>➕ Add New Room</h2>
      <p class="hint">Add room number, choose type and price (in ₹).</p>

      <form action="AddRoomServlet" method="post" onsubmit="validateForm(event)">
        <div>
          <label>Room No</label><br>
          <input id="room_no" name="room_no" type="text" placeholder="e.g. 105" required>
        </div>

        <div>
          <label>Room Type</label><br>
          <select name="room_type">
            <option>Single</option>
            <option>Double</option>
            <option>Suite</option>
          </select>
        </div>

        <div>
          <label>Price (₹)</label><br>
          <input id="price" name="price" type="number" step="0.01" placeholder="e.g. 2500" required>
        </div>

        <div>
          <label>&nbsp;</label><br>
          <input class="btn primary" type="submit" value="Add Room">
        </div>

        <div class="full actions">
          <a class="btn ghost" href="index.jsp">← Back</a>
          <span style="margin-left:auto;color:#6b7280">All fields required</span>
        </div>
      </form>
    </div>
  </div>
</body>
</html>