package model;

public class Room {
    private int room_id;
    private String room_no;
    private String room_type;
    private double price;
    private String status;

    // ✅ Empty constructor (required for JSP/Servlet bean use)
    public Room() {
    }

    // ✅ Constructor with all fields
    public Room(int room_id, String room_no, String room_type, double price, String status) {
        this.room_id = room_id;
        this.room_no = room_no;
        this.room_type = room_type;
        this.price = price;
        this.status = status;
    }

    // ✅ Getters and Setters
    public int getRoom_id() {
        return room_id;
    }

    public void setRoom_id(int room_id) {
        this.room_id = room_id;
    }

    public String getRoom_no() {
        return room_no;
    }

    public void setRoom_no(String room_no) {
        this.room_no = room_no;
    }

    public String getRoom_type() {
        return room_type;
    }

    public void setRoom_type(String room_type) {
        this.room_type = room_type;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    // ✅ Optional: for debugging or printing objects
    @Override
    public String toString() {
        return "Room [room_id=" + room_id + ", room_no=" + room_no + ", room_type=" + room_type +
               ", price=" + price + ", status=" + status + "]";
    }
}