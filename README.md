# e-commerce-BE

- Backend Application made using REST API in SpringBoot 3.
- Deployed at render.com using docker file
- Application link(accessible after setup) : [http://localhost:8080](http://localhost:8080)
- API documentation: [http://localhost:8080/swagger-ui.html](http://localhost:8080/swagger-ui.html)
- h2-database: [http://localhost:8080/h2-console](http://localhost:8080/h2-console)

# Local Setup Guide

## Prerequisites

Before starting, make sure you have the following installed on your local machine:

1. **Git**: To clone the repository. [Download Git](https://git-scm.com/downloads)
2. **Java JDK 17 or later**: To build and run the Spring Boot application. [Download Java](https://adoptopenjdk.net/)
3. **Maven**: To build the application. [Download Maven](https://maven.apache.org/download.cgi)
4. **IDE (Optional)**: Any Java IDE such as [IntelliJ IDEA](https://www.jetbrains.com/idea/) or [Eclipse](https://www.eclipse.org/) for better coding experience (optional but recommended).

### Note:
Since the app has already beed deployed it can also be accessed at:

```
https://e-commerce-backend-iwni.onrender.com
https://e-commerce-backend-iwni.onrender.com/products
https://e-commerce-backend-iwni.onrender.com/products/:id
https://e-commerce-backend-iwni.onrender.com/products/categories
```

## Steps to Clone and Run the Spring Boot Application Locally

### 1. Clone the Repository

First, open your terminal or command prompt and clone the Git repository using the following command:

```
git clone https://github.com/ankit-suman-07/e-commerce-BE.git
```

### 2. Navigate to the Project Directory

Change your working directory to the cloned repository folder(if not already there):

```
cd e-commerce-BE
```

### 3. Build the Project

Ensure you have Maven installed. If Maven is installed correctly, you should be able to build the project using the following command:

```
mvn clean install
```

### 4. Configure Application Properties (If Required)

If the application requires any custom configuration (such as database connection settings or API keys), open the src/main/resources/application.properties or  file and modify the configuration according to your local environment.

For example: Modify the file path based on your db file location
Most probably in C drive it could be something like : C:/Users/your_device_name/test
```
# application.properties
spring.datasource.url=jdbc:h2:file:{FILE_PATH};INIT=RUNSCRIPT FROM 'classpath:data.sql';
```

### 5. Run the Application

Once the project is built successfully, you can run the Spring Boot application using Maven by executing the following command:

```
mvn spring-boot:run
```

### 6. Access the Application

Once the application has started, you can access it by navigating to the following URL in your browser:

```
http://localhost:8080
http://localhost:8080/products
http://localhost:8080/products/:id
http://localhost:8080/products/categories
```
