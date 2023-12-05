# prj301-se1726-08
# Member: 
- Lê Nguyễn Hoàng Phúc (Leader) 
- Phạm Huy Hoàng
- Đoàn Võ Xuân Thư
# I.Requirement:
## Details
- Name: Fashion Fever
- Decribe: We offer a diverse collection of styles, ranging from dress shirts, t-shirts, and jackets to jeans, shorts, and dresses. The materials vary, including cotton, linen, denim, and more, providing comfort and style for every day.
  
## Features:
### 1.User Registration and Login:
- Users should be able to create an account and register with FashionFever.
- Users should be able to log in to their accounts with their credentials.
### 2.User Profile:
- Users should have a profile page where they can manage their personal information, such as name, address, and contact details.
- Users should be able to update their profile information.
### 3.Product Database:
- There should be a database to store information about products available on FashionFever.
- The database should include details such as product name, description, price, category, and image.
- Admins should have the ability to upload new products to the database.
### 4.Product Categories:
- The website should display different categories of products, such as clothing, accessories, footwear, etc.
- Users should be able to browse products by category.
### 5.Product Search:
- Users should have the option to search for products using keywords.
- The search results should display relevant products based on the user's input.
### 6.Product Management:
- Admins should have the ability to manage products in the database.
- They should be able to add, edit, and delete product information.
### 7.Shopping Cart:
- Users should be able to add products to their shopping cart.
- They should be able to view the contents of their cart and update the quantities or remove items.
### 8.Order Management:
- Admins should have the ability to manage and process orders.
### 9.Payment:
- Users should be able to make payments for their orders.

# II.Wireframe or screenshots of the system
## Sitemap:
![shopSiteMap2](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/122954291/5a33c704-35e0-441c-ab79-c50e96be9450)

-------------------------------------------------------------------------------------

## Wireframe: 
### +Home: 
![home](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/133560614/02c785d9-a475-4202-88e3-48cddb94c3b8)

======================================================================================

### +Bag
![bag](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/133560614/b0248f53-8603-42b4-a993-bbdbec1f8cb5)

======================================================================================

### +Cart
![checkout](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/133560614/ea6a8743-f406-4ba5-9e12-110d665908d4)

======================================================================================

### +Login
![login](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/133560614/22ca6627-3b24-4914-a8f8-741e8f96c43d)

======================================================================================

### +Sign up
![signup](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/133560614/e812cc3a-9e43-4f5e-bbcc-9707e9bcdef6)

======================================================================================

### +About
![About](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/133560614/61cfce8c-34df-48d2-b359-b00a7cc7c74a)

======================================================================================

### +Categories
![Categories](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/133560614/33e5f3e3-658e-4853-895b-1bcc2ac6aae9)

======================================================================================

### +Footer
![footer](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/133560614/29f6c06b-5e53-4740-9b3c-8ff340d56765)

======================================================================================

### +Product Management


![product_manage](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/122954291/f2cd25ce-a35c-4bb6-8fd1-02adf4e1b0b5)
![add_product](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/122954291/421fc085-d8ac-4a50-80d5-6a7110af8907)
![update](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/122954291/4bd92052-5b4e-4429-91b0-8d6b7567ec52)

======================================================================================

### Manage order
![ViewOrder](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/122954291/70c82346-d521-4ee8-865e-01494a54ce3a)

-------------------------------------------------------------------------------------

# III.Database design (Done)
## ERD:
![Xt1 (1) drawio](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/133560614/6bc048d4-f7a6-41e3-a713-632994a66bf5)


======================================================================================

# 4. System Design:

The online fashion shop application uses the MVC2 architecture to separate its components for improved maintainability and scalability. Here's a high-level description of how the system is developed and implemented:

## Model:

The Model handles the data and business logic of the application.
It interacts with the database to store and retrieve information about clothing items, user accounts, orders, and other relevant data.
The Model also includes validation and processing of user inputs before saving them to the database.
## View:

The View represents the user interface of the online fashion shop.
It displays the clothing items, product details, shopping cart, and checkout pages.
The View receives data from the Controller to show information to the users.
It is designed to be responsive and user-friendly to provide an excellent shopping experience on different devices.
## Controller:

The Controller acts as the intermediary between the Model and the View.
It processes user requests, such as adding items to the shopping cart, placing orders, and updating user profiles.
The Controller communicates with the Model to fetch or update data based on the user's actions.
It passes the necessary data to the View to be presented to the users.
## Diagrams:

To provide a better understanding of the system, UML diagrams like a class diagram, sequence diagram, and state chart can be included.
The class diagram shows the classes and their relationships, representing the data structure and the flow of information.
The sequence diagram demonstrates the interactions between different components during specific processes, such as placing an order.
The state chart illustrates the different states and transitions that a user's shopping cart may go through during the shopping process.
## Technology Stack:

Front-end: HTML, CSS, JavaScript, and a front-end framework like React or Angular for building responsive and interactive user interfaces.
Back-end: A server-side language like Node.js, Python, or Ruby to handle requests and implement the business logic.
Database: SQL (e.g., MySQL, PostgreSQL) or NoSQL (e.g., MongoDB) to store and manage the application's data.
Web Server: Apache, Nginx, or other web servers to host the application and serve it to users.
Version Control: Git for managing code and collaborating with a development team.
![Main](https://github.com/dunghuynh-teaching/prj301-se1726-08/assets/133560614/2fae17d3-dfc1-4a0a-b7f9-3145223bcdb1)


# 5. Conclusion and Discussion 
## Pros of the Application:

Provides a convenient platform for users to shop for man and woman clothes from the comfort of their homes.
Offers a wide range of clothing items and sizes, catering to diverse customer preferences.
Uses the MVC2 architecture for better code organization and maintainability.
Utilizes responsive design for an optimal shopping experience on various devices.
## Cons of the Application:

Potential security vulnerabilities, such as data breaches and unauthorized access, need to be addressed.
Performance issues may arise during high traffic periods, requiring optimization strategies.
Limited personalization features, which could affect customer retention and engagement.
## Learnings During Development:

Gained experience in implementing an MVC2 architecture for web applications.
Improved skills in front-end and back-end development, database design, and web server configuration.
Gained insights into the importance of testing and debugging to ensure the application's reliability.
## Future Improvements:

Implement user authentication and authorization for enhanced security and user account management.
Introduce recommendation systems based on user preferences to improve personalization.
Optimize the application's performance to handle increased traffic and reduce loading times.
Enhance the user interface to improve user engagement and shopping experience.
Integrate secure payment gateways to facilitate smooth and safe transactions.
Note: The above conclusion and discussion are general and may need to be tailored to the specifics of your actual application.
