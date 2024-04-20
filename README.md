# My Users App

This project implements a simple web application following the MVC (Model View Controller) architecture. It allows you to manage users in a SQLite database, providing functionalities such as creating, reading, updating, and deleting users.

## Setup

1. **Clone the repository:**


    git clone <repository_url>


2. **Install dependencies:**

    Ensure you have Ruby installed on your system. Then, install the required gems:

    bundle install

3. **Setup the database:**

    The SQLite database is stored in `db.sql`. If you need to reset the database, you can simply delete this file and run the application again.

## Usage

1. **Run the application:**

    Start the application by running:

    ruby app.rb

    This will start the server, and you can access the application in your browser at `http://localhost:4567`.

2. **Routes:**

    - `GET /users`: Retrieves all users.
    - `POST /users`: Creates a new user.
    - `GET /`: Renders the index page with a table displaying all users.


## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

