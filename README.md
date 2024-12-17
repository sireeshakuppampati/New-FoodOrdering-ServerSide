New-FoodOrdering
A Spring Boot RESTful API application for managing food ordering, including users, restaurants, menu items, and orders.

Features
User Management: Create, retrieve, update, and delete users.
Restaurant Management: Add, view, update, and delete restaurants.
Menu Management: Add, view, update, and delete menu items.
Order Management: Place, retrieve, update, and delete orders.
Technologies Used
Java 17
Spring Boot 3.4
MySQL (Database)
Maven (Build tool)
Docker (Containerization)
Prerequisites
Ensure you have the following installed:

Java 17
Maven
MySQL (Port 3306 with a database food_ordering_db)
Docker (Optional for containerization)
Setup Instructions
1. Clone the Repository
bash
Copy code
git clone <repository-url>
cd New-FoodOrdering
2. Set Up the Database
Run MySQL on localhost:3306.
Create a database:
sql
Copy code
CREATE DATABASE food_ordering_db;
Update application.properties with your MySQL credentials:
properties
Copy code
spring.datasource.url=jdbc:mysql://localhost:3306/food_ordering_db
spring.datasource.username=root
spring.datasource.password=Keyin2021
3. Build the Project
Build the project using Maven:

bash
Copy code
mvn package -DskipTests
This generates the JAR file at target/New-FoodOrdering-0.0.1-SNAPSHOT.jar.

4. Run Locally
Run the application:

bash
Copy code
java -jar target/New-FoodOrdering-0.0.1-SNAPSHOT.jar
Access the application at:

plaintext
Copy code
http://localhost:8080/New-FoodOrdering
Docker Setup
1. Build the Docker Image
bash
Copy code
docker build -t new-foodordering:latest .
2. Run the Docker Container
Run the application on port 9090:

bash
Copy code
docker run --name New-FoodOrdering -p 9090:8080 new-foodordering:latest
Access the application at:

plaintext
Copy code
http://localhost:9090/New-FoodOrdering
API Endpoints
Users
POST /users/add: Add a new user.
GET /users/all: Get all users.
GET /users/{id}: Get user by ID.
PUT /users/update/{id}: Update user details.
DELETE /users/delete/{id}: Delete user.
Restaurants
Similar to users endpoints.
Menu Items
Similar to users endpoints.
Orders
Similar to users endpoints.
Testing
For testing purposes, H2 in-memory database is configured in application-test.properties.
