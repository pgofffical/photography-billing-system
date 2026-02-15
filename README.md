📸 LensArt Studio — Photography Billing System

A full-stack web application for managing photography bookings, clients, services, and invoices.
Built using Java Servlet, JSP, MongoDB, Bootstrap, and Apache Tomcat.

This system provides:

✔ Public website for customers
✔ Event booking form
✔ Admin dashboard
✔ Client management
✔ Invoice management
✔ Service management
✔ Modern responsive UI

🌐 Live Features
👤 Customer Side

Professional homepage

Services page

Event gallery

Online booking form

Booking success message

Responsive design

🔐 Admin Panel

Secure login

Dashboard with statistics

Add / View Clients

Add / View Services

Create / View Invoices

Manage bookings

🛠️ Technology Stack
Layer	Technology
Backend	Java Servlet + JSP
Database	MongoDB
Frontend	HTML, CSS, Bootstrap 5
Server	Apache Tomcat 10
Build	Dynamic Web Project
Icons	Font Awesome
📂 Project Structure
PhotographyBillingSystem/
│
├── src/
│   ├── com.demo.controller/
│   │   ├── AddClientServlet.java
│   │   ├── ViewClientServlet.java
│   │   ├── BookingServlet.java
│   │   └── LoginServlet.java
│   │
│   └── com.demo.dao/
│       └── ClientDAO.java
│
├── WebContent/  (or webapp/)
│   ├── index.jsp
│   ├── services.jsp
│   ├── gallery.jsp
│   ├── booking.jsp
│   ├── admin/
│   │   ├── dashboard.jsp
│   │   ├── addClient.jsp
│   │   └── viewClient.jsp
│   │
│   ├── images/
│   └── WEB-INF/
│       └── web.xml

⚙️ Setup Instructions (Local Run)
1️⃣ Requirements

Java JDK 17+

Apache Tomcat 10+

MongoDB installed and running

Eclipse IDE (recommended)

2️⃣ Import Project

Open Eclipse

File → Import → Existing Project

Select project folder

Add Apache Tomcat server

3️⃣ Configure Database

Update MongoDB connection inside DAO class:

MongoClient mongo = MongoClients.create("mongodb://localhost:27017");
MongoDatabase db = mongo.getDatabase("photography");

4️⃣ Run Project

Right click project → Run on Server → Tomcat

Open browser:

http://localhost:8080/PhotographyBillingSystem/

🚀 Deployment Guide (Public Website)
Option 1 — Deploy using GitHub + Cloud Server

Upload project to GitHub

Deploy on a cloud Java hosting platform

Configure Tomcat runtime

Set environment database

📷 Screens Included

Homepage

Booking Form

Admin Dashboard

Clients Table

Services Page

Gallery Page

✨ Key Functional Flow
Customer Flow

Home → View Services → Book Event → Data saved → Admin views booking

Admin Flow

Login → Dashboard → Manage Clients → Manage Services → Create Invoice

🔐 Default Admin Login

(You can change in database)

Email: admin@lensart.com
Password: admin123

💡 Future Improvements

Online payment integration

Email confirmation

Booking calendar view

Image upload system

Role-based admin access

Revenue analytics charts

👨‍💻 Author

Pranav
Photography Billing System Project
