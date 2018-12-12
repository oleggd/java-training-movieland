package com.movieland.service;

import com.movieland.entity.Country;
import com.movieland.entity.Movie;

import java.util.List;

public interface CountryService {

    List<Country> getAll();

    List<Country> getByMovieId(int id);

    void enrichMovie(Movie movie);
}
