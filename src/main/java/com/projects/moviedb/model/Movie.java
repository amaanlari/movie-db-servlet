package com.projects.moviedb.model;

import java.util.Date;

public class Movie {

    int id;
    String title;
    String overview;
    Date release_date;
    int runtime;

    public Movie(int id, String title, String overview, Date release_date, int runtime) {
        this.id = id;
        this.title = title;
        this.overview = overview;
        this.release_date = release_date;
        this.runtime = runtime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public Date getRelease_date() {
        return release_date;
    }

    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }

    public int getRuntime() {
        return runtime;
    }

    public void setRuntime(int runtime) {
        this.runtime = runtime;
    }

    @Override
    public String toString() {
        return "Movie{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", overview='" + overview + '\'' +
                ", release_date=" + release_date +
                ", runtime=" + runtime +
                '}';
    }
}
