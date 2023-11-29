package com.projects.moviedb.dao;

import com.projects.moviedb.model.User;

import java.sql.*;

public class UserDao {

    private static final String INSERT_USER_SQL = "insert into users (username, password) values (?,?);";
    private static final String FIND_USER_QUERY = "select * from users where username = ?";

    protected static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection connection;
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/movie_db";
        String username = "root";
        String password = "mysql@121";
        connection = DriverManager.getConnection(url, username, password);
        return connection;
    }

    public static void insertUser(User user) throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL);
        preparedStatement.setString(1, user.getName());
        preparedStatement.setString(2, user.getPassword());
        preparedStatement.executeUpdate();
    }
    
    public static User findUser(String username) throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_USER_QUERY);
        preparedStatement.setString(1, username);
        ResultSet rs = preparedStatement.executeQuery();
        User user = null;
        while (rs.next()) {
            user = new User(rs.getString(1), rs.getString(2));
        }
        return user;
    }

}
