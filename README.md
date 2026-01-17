# 🏨 Hotel Reservation System (Java)

A robust and efficient Hotel Reservation System built using **Core Java**. This application allows users (Admins/Receptionists) to manage hotel rooms, booking reservations, customer details, and billing in a streamlined manner.

Designed to demonstrate Object-Oriented Programming (OOP) principles, File Handling/Database connectivity, and logical implementation of real-world scenarios.

## ✨ Features

* **Room Management:** Add, update, or delete room records (Luxury, Deluxe, Standard).
* **Check-In System:** allocate rooms to guests and record their personal details.
* **Check-Out & Billing:** Automatically calculate the total cost based on the number of days and room type.
* **Search Functionality:** Find guest details by ID or Name.
* **Room Availability:** Check which rooms are currently vacant or occupied.
* **Data Persistence:** Uses **JDBC with MySQL** (or File Handling, depending on your implementation) to save records.

## 🛠️ Tech Stack

* **Language:** Java (JDK 8+)
* **Database:** MySQL / SQLite (Optional)
* **Concepts Used:**
    * Object-Oriented Programming (Classes, Objects, Inheritance, Polymorphism)
    * Collection Framework (ArrayList, Maps)
    * Exception Handling
    * File I/O (if no database is used)

## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine.

### Prerequisites

* **Java Development Kit (JDK)** installed.
* An IDE like **IntelliJ IDEA**, **Eclipse**, or **NetBeans**.
* **MySQL Server** (if the project uses a database).

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/Yash0584/Hotel-Reservation-System-Java.git](https://github.com/Yash0584/Hotel-Reservation-System-Java.git)
    ```

2.  **Open in IDE:**
    * Open your IDE (e.g., IntelliJ IDEA).
    * Select `File > Open` and choose the cloned folder.

3.  **Setup Database (If applicable):**
    * Import the `database.sql` file provided in the `sql/` folder into your MySQL workbench.
    * Update the database credentials (username/password) in the `ConnectionClass.java` file.

4.  **Run the Application:**
    * Navigate to `src/Main.java`.
    * Right-click and select **Run**.

## 📸 Usage

1.  **Launch the App:** You will see a menu-driven interface (Console or GUI).
2.  **Select Option:** Choose from options like "Book Room," "Check Availability," or "Exit."
3.  **Enter Details:** Follow the prompts to enter guest information.
4.  **View Bill:** Upon checkout, the system generates a summary of the stay.

## 🔮 Future Improvements

* **GUI Interface:** Upgrade from Console to a JavaFX or Swing interface.
* **Web Integration:** Convert the logic into a Spring Boot backend API.
* **Payment Gateway:** Integrate a mock payment processing system.

## 🤝 Contributing

Contributions are welcome!
1.  Fork the project.
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`).
3.  Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4.  Push to the branch (`git push origin feature/AmazingFeature`).
5.  Open a Pull Request.

