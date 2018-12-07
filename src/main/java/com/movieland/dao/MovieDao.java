package com.movieland.dao;

import com.movieland.dao.jdbc.RequestParameters;
import com.movieland.entity.Movie;

import java.util.List;

public interface MovieDao {

    List<Movie> getAll(RequestParameters requestParameters);

    List<Movie> getRandom();

    List<Movie> getByGenre(int id, RequestParameters requestParameters);
}
