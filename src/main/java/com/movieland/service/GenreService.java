package com.movieland.service;

import com.movieland.entity.Genre;
import com.movieland.entity.Movie;

import java.util.List;

public interface GenreService {

    List<Genre> getAll();

    List<Genre> getByMovieId(int id);

    void enrichMovie(Movie movie);
}
