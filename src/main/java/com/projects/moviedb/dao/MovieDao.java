package com.projects.moviedb.dao;

import com.projects.moviedb.model.Movie;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MovieDao {
    private static final String FIND_ALL_MOVIE_QUERY = "select * from movie";
    private static final String INSERT_MOVIE_SQL = "INSERT INTO movie (movie_id, title, overview, release_date, runtime) VALUES (?,?,?,?,?)";

    protected static Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection connection;
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/movie_db";
        String username = "root";
        String password = "mysql@121";
        connection = DriverManager.getConnection(url, username, password);
        return connection;
    }

    public static void insertMovie(Movie movie) throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(INSERT_MOVIE_SQL);
        preparedStatement.setInt(1, movie.getId());
        preparedStatement.setString(2, movie.getTitle());
        preparedStatement.setString(3, movie.getOverview());
        preparedStatement.setDate(4, Date.valueOf(movie.getRelease_date()));
        preparedStatement.setInt(5, movie.getRuntime());
        preparedStatement.executeUpdate();
    }

    public static List<Movie> findMovies() throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FIND_ALL_MOVIE_QUERY);
        ResultSet rs = preparedStatement.executeQuery();
        Movie movie;
        List<Movie> movies = new ArrayList<>();
        while (rs.next()) {
            movie = new Movie(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getDate(4).toLocalDate(),
                    rs.getInt(5)
            );
            movies.add(movie);
        }
        return movies;
    }
}
