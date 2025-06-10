# Meriauto - Car Marketplace Platform

## Overview
Meriauto is a full-stack car marketplace platform designed to connect buyers and sellers in a seamless and user-friendly environment. Built using Spring Boot for the backend and HTML/CSS/JavaScript for the frontend, Meriauto aims to provide a clean and mobile-friendly experience for all users.

## Features
- **User Roles**: Supports multiple user roles including Buyer, Seller, and Admin.
- **Car Listings**: Users can view, add, edit, and delete car listings.
- **Search and Filter**: Advanced search and filter options by brand, model, city, and price.
- **Messaging**: Users can send and receive messages to facilitate communication between buyers and sellers.
- **Favorites**: Buyers can save cars to their favorites for easy access later.
- **Subscriptions**: Premium features available for subscribed users.
- **Admin Dashboard**: Admins can manage users, ads, and listings effectively.

## Technology Stack
- **Backend**: Spring Boot, JPA, MySQL
- **Frontend**: HTML, CSS, JavaScript
- **Security**: Spring Security with BCrypt for authentication

## Project Structure
```
meriauto
├── backend
│   ├── src
│   │   ├── main
│   │   │   ├── java
│   │   │   │   └── com
│   │   │   │       └── meriauto
│   │   │   │           ├── MeriautoApplication.java
│   │   │   │           ├── config
│   │   │   │           ├── controller
│   │   │   │           ├── entity
│   │   │   │           ├── repository
│   │   │   │           ├── service
│   │   │   │           └── util
│   │   │   └── resources
│   │   └── test
│   ├── pom.xml
│   └── README.md
├── frontend
│   ├── public
│   ├── src
│   └── README.md
└── README.md
```

## Getting Started
1. **Clone the repository**: 
   ```
   git clone <repository-url>
   ```
2. **Backend Setup**:
   - Navigate to the `backend` directory.
   - Configure the database connection in `application.properties`.
   - Run the application using Maven:
     ```
     mvn spring-boot:run
     ```

3. **Frontend Setup**:
   - Navigate to the `frontend` directory.
   - Open `index.html` in a web browser to view the application.

## Future Enhancements
- Implement payment integration (e.g., Razorpay/Stripe).
- Add push notifications for new messages.
- Enhance the admin dashboard with analytics features.

## Contributing
Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.

## License
This project is licensed under the MIT License.