package com.meriauto.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @Column(unique = true, nullable = false)
    private String email;

    private String password;

    @Enumerated(EnumType.STRING)
    private Role role;

    private boolean isPremium;
    private boolean isVerified;

    // One user can sell many cars
    @OneToMany(mappedBy = "seller")
    private List<Car> cars;

    // Messages sent
    @OneToMany(mappedBy = "sender")
    private List<Message> sentMessages;

    // Messages received
    @OneToMany(mappedBy = "receiver")
    private List<Message> receivedMessages;

    // Subscriptions
    @OneToMany(mappedBy = "user")
    private List<Subscription> subscriptions;

    // Saved cars
    @OneToMany(mappedBy = "user")
    private List<SavedCar> savedCars;

    // Getters and setters...

    public enum Role {
        BUYER, SELLER, ADMIN
    }
}

package com.meriauto.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "car")
public class Car {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String brand;
    private String model;
    private int year;
    private double price;
    private String description;
    private String imagePath;
    private String city;
    private boolean isFeatured;

    // Many cars can belong to one seller (User)
    @ManyToOne
    @JoinColumn(name = "seller_id")
    private User seller;

    // Getters and setters...
}

package com.meriauto.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "message")
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Sender of the message
    @ManyToOne
    @JoinColumn(name = "sender_id")
    private User sender;

    // Receiver of the message
    @ManyToOne
    @JoinColumn(name = "receiver_id")
    private User receiver;

    private String message;

    private LocalDateTime timestamp;

    // Getters and setters...
}

package com.meriauto.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "subscription")
public class Subscription {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Many subscriptions can belong to one user
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    private double amount;

    @Enumerated(EnumType.STRING)
    private Status status;

    private LocalDateTime date;

    public enum Status {
        PAID, PENDING
    }

    // Getters and setters...
}

package com.meriauto.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "ad")
public class Ad {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String imageUrl;
    private String link;
    private boolean isActive;

    // Getters and setters...
}

package com.meriauto.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "saved_car")
public class SavedCar {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // The user who saved the car
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    // The car that was saved
    @ManyToOne
    @JoinColumn(name = "car_id")
    private Car car;

    // Getters and setters...
}