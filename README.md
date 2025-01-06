README for Backend: New-FoodOrdering-SPRING-API
New-FoodOrdering-SPRING-API
This is the backend repository for the New Food Ordering application. It is developed using Java Spring Boot and uses MySQL as the database. The backend handles all business logic, API endpoints, and database interactions for the application.

Features
User Management: Create, view, update, and delete users.
Menu Management: Manage menu items including their availability and details.
Order Management: Handle customer orders and track their statuses.
Restaurant Management: Manage restaurant information.
Secure APIs: Configured with CORS for frontend interaction.
Logging: Detailed logging for debugging and monitoring.
Dockerized: Easy deployment using Docker.
Prerequisites
Ensure you have the following installed before setting up the application:

Java JDK 17 or higher
Maven
MySQL (local or remote database like AWS RDS)
Docker (optional for containerized deployment)
Configuration
Database Configuration:
Edit the application.properties file to match your database settings:

properties
Copy code
# Database Configuration
spring.datasource.url=jdbc:mysql://<your-database-url>:3306/food-ordering-db?useSSL=false&serverTimezone=UTC
spring.datasource.username=<your-database-username>
spring.datasource.password=<your-database-password>
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

# Hibernate Configuration
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect

# Server Configuration
server.servlet.context-path=/New-FoodOrdering
server.port=8080

# Logging Configuration
logging.level.org.springframework=DEBUG
logging.level.org.hibernate.SQL=DEBUG
How to Run
Local Setup:
Clone the repository:

bash
Copy code
git clone https://github.com/sireeshakuppampati/New-FoodOrdering-SPRING-API.git
cd New-FoodOrdering-SPRING-API
Build the project:

bash
Copy code
mvn clean install
Start the application:

bash
Copy code
mvn spring-boot:run
Access the application:

Local URL: http://localhost:8080/New-FoodOrdering
Replace localhost with your server URL for deployment.
Using Docker:
Build the Docker image:

bash
Copy code
docker build -t sireesha2024/food-ordering-app:latest .
Push the Docker image to a container registry:

bash
Copy code
docker push sireesha2024/food-ordering-app:latest
Pull and run the image on the deployment server:

bash
Copy code
docker pull sireesha2024/food-ordering-app:latest
docker run -d --name food-ordering-app -p 8080:8080 sireesha2024/food-ordering-app:latest
API Endpoints
Users
GET /New-FoodOrdering/users/all - Get all users
POST /New-FoodOrdering/users/add - Add a new user
DELETE /New-FoodOrdering/users/delete/{id} - Delete a user by ID
Menu Items
GET /New-FoodOrdering/menu_items/all - Get all menu items
POST /New-FoodOrdering/menu_items/add - Add a new menu item
Orders
GET /New-FoodOrdering/orders/all - Get all orders
POST /New-FoodOrdering/orders/add - Add a new order
Restaurants
GET /New-FoodOrdering/restaurants/all - Get all restaurants
Deployment
Steps to Push to GitHub
Initialize a Git repository:

bash
Copy code
git init
Add remote origin:

bash
Copy code
git remote add origin https://github.com/sireeshakuppampati/New-FoodOrdering-SPRING-API.git
Add and commit changes:

bash
Copy code
git add .
git commit -m "Initial commit"
Push to GitHub:

bash
Copy code
git push -u origin main
Logging and Monitoring
All logs are saved with debug-level details for troubleshooting.
Check logging.level.org.springframework and logging.level.org.hibernate.SQL settings in the application.properties file.
Contact
For any queries, contact Sireesha Kuppampati.

GitHub: sireeshakuppampati
Email: siriesha.rao@gmail.com

