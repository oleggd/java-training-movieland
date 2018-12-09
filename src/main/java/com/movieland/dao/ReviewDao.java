package com.movieland.dao;

import com.movieland.entity.Review;

import java.util.List;

public interface ReviewDao {

    List<Review> getByMovieId(int id);
}
