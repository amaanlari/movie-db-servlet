package com.projects.moviedb.controller;

import com.projects.moviedb.dao.MovieDao;
import com.projects.moviedb.model.Movie;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Get the data from database.
        List<Movie> movieList = new ArrayList<>();
        try {
            movieList = MovieDao.findMovies();
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        req.setAttribute("movieList", movieList);
        RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
        dispatcher.forward(req, resp);
    }
}
