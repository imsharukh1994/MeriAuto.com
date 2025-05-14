# Meriauto - Car Listing Platform

A full-stack car listing platform built with Spring Boot, Ruby on Rails microservice, and AngularJS frontend.

## 🏗️ Architecture

- **Backend**: Spring Boot (Java) with MySQL and Apache Kafka
- **Microservice**: Ruby on Rails for contact/feedback management
- **Frontend**: AngularJS with jQuery enhancements
- **Database**: MySQL
- **Message Queue**: Apache Kafka
- **Analytics**: Google Analytics, GTM, Crazy Egg, Browsee
- **CDN**: Fastly/Cloudflare integration ready
- **Monitoring**: New Relic integration

## 🚀 Quick Start

### Prerequisites
- Java 11+
- Node.js 14+
- Ruby 3.0+
- MySQL 8.0+
- Docker & Docker Compose

### Setup with Docker

1. Clone the repository
```bash
git clone https://github.com/your-repo/meriauto-platform.git
cd meriauto-platform
```

2. Start all services
```bash
docker-compose up -d
```

3. Access the application
- Frontend: http://localhost:3000
- Backend API: http://localhost:8080
- Contact Service: http://localhost:3001
- Swagger UI: http://localhost:8080/swagger-ui.html

### Manual Setup

#### Backend (Spring Boot)
```bash
cd backend
mvn clean install
mvn spring-boot:run
```

#### Contact Service (Ruby on Rails)
```bash
cd contact-service
bundle install
rails db:create db:migrate
rails server -p 3001
```

#### Frontend (AngularJS)
```bash
cd frontend
# Serve using any HTTP server
python -m http.server 3000
# or
npx serve -s . -l 3000
```

## 📚 API Documentation

### Car APIs
- `GET /api/cars` - Get all cars
- `GET /api/cars/{id}` - Get car by ID
- `POST /api/cars` - Create new car
- `PUT /api/cars/{id}` - Update car
- `DELETE /api/cars/{id}` - Delete car
- `GET /api/cars/search` - Search cars with filters
- `GET /api/cars/featured` - Get featured cars
- `GET /api/recommendations/{carId}` - Get recommended cars

### Contact APIs
- `POST /api/contact` - Submit contact inquiry
- `GET /api/v1/feedbacks` - Get all feedbacks (Rails service)
- `POST /api/v1/feedbacks` - Submit feedback (Rails service)

## 🎯 Features

### Core Features
- Car listing and search with multiple filters
- Car detail pages with image carousel
- Contact form for inquiries
- Featured cars section
- Responsive design

### Advanced Features
- Real-time logging with Kafka
- Car recommendation engine
- Analytics integration (GA, GTM, Crazy Egg, Browsee)
- CDN optimization ready
- AMP pages for mobile performance
- New Relic monitoring integration

### Performance Optimizations
- Image lazy loading
- Caching strategies
- Gzip compression
- CDN integration
- Minified CSS/JS

## 🔧 Configuration

### Analytics Setup
1. Replace `GA_TRACKING_ID` in index.html with your Google Analytics ID
2. Update GTM container ID `GTM-XXXXXXX`
3. Add your Crazy Egg script ID
4. Configure Browsee token

### CDN Setup
1. Update `infrastructure/fastly-config.json` with your domain
2. Configure Cloudflare settings in `infrastructure/cloudflare-config.json`

### Monitoring
1. Add New Relic license key in `infrastructure/newrelic-setup.js`
2. Configure application IDs

## 🚀 Deployment

### Production Build
```bash
# Backend
cd backend
mvn clean package -Pproduction

# Contact Service
cd contact-service
RAILS_ENV=production bundle exec rails assets:precompile

# Frontend
cd frontend
# Minify and optimize assets
```

### Environment Variables
```bash
# Backend
SPRING_PROFILES_ACTIVE=production
SPRING_DATASOURCE_URL=jdbc:mysql://prod-db:3306/meriauto
SPRING_KAFKA_BOOTSTRAP_SERVERS=prod-kafka:9092

# Rails Service
RAILS_ENV=production
DATABASE_URL=mysql2://user:pass@host:3306/db
```

## 📱 Mobile & AMP

AMP pages available at:
- `/amp/home.amp.html` - Mobile optimized homepage
- `/amp/car-detail.amp.html` - AMP car detail page

## 🧪 Testing

```bash
# Backend tests
cd backend
mvn test

# Frontend tests (with your preferred framework)
cd frontend
npm test
```

## 📈 Monitoring & Analytics

- **New Relic**: Application performance monitoring
- **Google Analytics**: User behavior tracking
- **Crazy Egg**: Heatmap analysis
- **Browsee**: Session recordings

## 🤝 Contributing

1. Fork the repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Create Pull Request

## 📄 License

This project is licensed under the MIT License. 
