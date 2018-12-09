package com.movieland.service;

import com.movieland.entity.Review;
import com.movieland.entity.Movie;

import java.util.List;

public interface ReviewService {

    List<Review> getByMovieId(int id);

    void enrichMovie(Movie movie);
}
