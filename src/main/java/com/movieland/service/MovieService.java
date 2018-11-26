package com.movieland.service;

import com.movieland.entity.Movie;

import java.util.List;

public interface MovieService {

    List<Movie> getAll();

    List<Movie> getRandom();

    List<Movie> getByGenre(int id);
}
