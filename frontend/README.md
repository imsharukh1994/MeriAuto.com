# Meriauto Frontend Documentation

## Overview
Meriauto is a full-stack car marketplace platform designed to connect buyers and sellers in a seamless and user-friendly environment. This documentation provides an overview of the frontend structure and components of the application.

## Project Structure
The frontend of the Meriauto application is organized as follows:

```
frontend
├── public
│   └── index.html          # Main entry point for the frontend application
├── src
│   ├── css
│   │   └── styles.css      # CSS styles for the application
│   ├── js
│   │   ├── main.js         # Main JavaScript logic
│   │   ├── api.js          # API call functions
│   │   └── chat.js         # Chat functionality logic
│   ├── img                 # Directory for images used in the application
│   └── views
│       ├── home.html       # Homepage structure
│       ├── login.html      # Login form structure
│       ├── register.html    # Registration form structure
│       ├── car-detail.html  # Car details structure
│       ├── post-car.html    # Form to post a new car
│       ├── chat.html        # Chat interface structure
│       ├── saved-cars.html  # Display saved/favorite cars
│       ├── subscription.html # Subscription/payment page structure
│       └── admin-dashboard.html # Admin dashboard structure
```

## Features
- **Responsive Design**: The application is designed to be mobile-friendly, ensuring a smooth user experience across devices.
- **User Authentication**: Users can register and log in to access various features based on their roles (Buyer, Seller, Admin).
- **Car Listings**: Users can view, filter, and search for cars based on various criteria.
- **Messaging**: A chat interface allows buyers and sellers to communicate directly.
- **Favorites**: Users can save cars to their favorites for easy access later.
- **Admin Panel**: Admins can manage users, ads, and listings through a dedicated dashboard.

## Getting Started
To run the frontend application, ensure you have a web server set up to serve the `public/index.html` file. You can use tools like Live Server in your development environment for a quick setup.

## Future Enhancements
- Integration of payment gateways for subscriptions.
- Advanced analytics for users and admins.
- Enhanced chat features with real-time notifications.

For any issues or contributions, please refer to the main project repository.