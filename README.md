# Movie Database Website

Welcome to the Movie Database Website project! This project is built using Java Servlets, JSP, MySQL, and JDBC as part of my college Web Technology and Database Management System courses. The website allows users to register, log in, and add movies to the database, and it displays a list of movies from the MySQL database.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Features

- User Registration
- User Login
- Add Movies to the Database
- View List of Movies
- Secure Authentication and Session Management

## Technologies Used

- **Java**: Backend development
- **Servlets**: Handling HTTP requests and responses
- **JSP (JavaServer Pages)**: Dynamic web page creation
- **MySQL**: Database management
- **JDBC (Java Database Connectivity)**: Database connection
- **HTML/CSS**: Frontend development
- **Apache Tomcat**: Web server

## Installation

### Prerequisites

- JDK (Java Development Kit) 8 or higher
- Apache Tomcat server
- MySQL database
- IDE (Eclipse, IntelliJ IDEA, etc.)

### Steps

1. **Clone the repository:**
    ```sh
    git clone https://github.com/amaanlari/movie-db-servlet.git
    ```
3. **Import the project into your IDE.**
4. **Configure the MySQL database:**
    - Create a new database in MySQL.
    - Execute the SQL script provided in the `db` folder to create the required tables.
5. **Update the database configuration in the project:**
    - Open `db.properties` file.
    - Update the database URL, username, and password according to your MySQL setup.

6. **Deploy the project on Apache Tomcat:**
    - Add the project to the Tomcat server in your IDE.
    - Start the Tomcat server.

## Usage

1. Open your web browser and go to `http://localhost:8080/`.
2. Register a new user account or log in with an existing account.
3. Add movies to the database and view the list of movies.

## Screenshots

Here are some screenshots of the website:

### Home Page
![moviedbHomepage](https://github.com/amaanlari/movie-db-servlet/assets/121742871/85f312cc-616d-4fc6-8d4e-bfb570cb78b4)


### Registration Page
![moviedbRegister](https://github.com/amaanlari/movie-db-servlet/assets/121742871/286ffb88-1067-492d-800e-44b6ebfd8ec1)


### Login Page
![moviedbLogin](https://github.com/amaanlari/movie-db-servlet/assets/121742871/c779d57a-7d51-4bac-9409-54fa4c7de0fd)


### Add Movie Page
![moviedbMovieRegister](https://github.com/amaanlari/movie-db-servlet/assets/121742871/8d8d9e58-c22f-4aaf-bc78-ae199c00385d)


### Movie List Page
![moviedbMovie](https://github.com/amaanlari/movie-db-servlet/assets/121742871/986240e9-d506-4bca-99cd-1ad24304ba94)



## Contributing

Contributions are welcome! Please fork this repository and submit a pull request for any enhancements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contact

If you have any questions or suggestions, feel free to reach out:

- **Name**: Amaan Lari
- **GitHub**: [amaanlari](https://github.com/amaanlari)

*Note: If you have any questions or suggestions, please use the [GitHub Issues](https://github.com/amaanlari/movie-db-servlet/issues) section to reach out.*
