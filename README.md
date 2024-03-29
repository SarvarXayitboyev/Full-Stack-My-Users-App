## My Users App
Overview
My Users App is a web application that implements the Model-View-Controller (MVC) architecture using Ruby, SQLite3, and Sinatra. It provides functionalities to create, read, update, and delete user records stored in a SQLite database. Additionally, it includes routes for user authentication and rendering HTML views.

## Project Structure
my_user_model.rb: Contains the User class responsible for interacting with the SQLite database to perform CRUD operations on user records.
app.rb: Implements the controller logic using Sinatra routes to handle HTTP requests and responses. It utilizes the User class to process user-related actions.
views/index.html: HTML template file to render the user index page with a table displaying user information.
## Requirements
Ruby
Sinatra gem
SQLite3 gem
## Setup
Install Ruby if not already installed.
Install Sinatra and SQLite3 gems by running:

gem install sinatra sqlite3
Clone the repository:
bash
git clone <repository-url>
Navigate to the project directory:
bash

cd my-users-app
Run the application:

ruby app.rb
Access the application in your web browser at http://localhost:8080.
## Routes
GET /users: Retrieve all users (excluding passwords) as JSON.
POST /users: Create a new user with provided information (firstname, lastname, age, password, email) and return the created user info (without password) as JSON.
POST /sign_in: Authenticate a user based on provided email and password, and add a session containing the user ID. Return the authenticated user info (without password) as JSON.
PUT /users: Update the password of the currently logged-in user. Return the updated user info (without password) as JSON.
DELETE /sign_out: Sign out the current user by removing the session. Return nothing (HTTP status code 204).
DELETE /users: Sign out and delete the current user. Return nothing (HTTP status code 204).
GET /: Render the user index page (views/index.html) displaying user information in a table.
## HTML View
The index.html file in the views directory renders a table displaying user information fetched from the database. The table includes columns for firstname, lastname, age, and email.
## Notes
Ensure that the SQLite database file (db.sql) is present in the project directory and accessible by the application.
Modify the HTML template (index.html) as needed to customize the appearance and layout of the user index page.
## Contributors
Your Name
