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
import java.time.LocalDate;

public class MovieRegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("movie_id"));
        String title = req.getParameter("title");
        String overview = req.getParameter("overview");
        LocalDate release_date = LocalDate.parse(req.getParameter("release_date"));
        int runtime = Integer.parseInt(req.getParameter("runtime"));
        Movie newmovie = new Movie(id, title, overview, release_date, runtime);
        System.out.println(newmovie);
        try {
            MovieDao.insertMovie(newmovie);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        resp.sendRedirect("home");
    }
}
