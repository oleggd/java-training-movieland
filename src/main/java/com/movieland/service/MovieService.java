package com.movieland.service;

import com.movieland.dao.jdbc.RequestParameters;
import com.movieland.entity.Movie;

import java.util.List;

public interface MovieService {

    List<Movie> getAll(RequestParameters requestParameters);

    List<Movie> getRandom();

    List<Movie> getByGenre(int id, RequestParameters requestParameters);
}
