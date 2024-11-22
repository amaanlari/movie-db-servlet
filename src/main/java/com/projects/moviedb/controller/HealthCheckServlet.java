package com.projects.moviedb.controller;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/health")
public class HealthCheckServlet extends HttpServlet implements Servlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Simple health check logic: if the servlet is running, return HTTP 200 OK
        response.setStatus(HttpServletResponse.SC_OK);
        response.getWriter().write("{\"status\": \"UP\"}");
    }
}
