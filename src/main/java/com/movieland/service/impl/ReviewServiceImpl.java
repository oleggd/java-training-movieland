package com.movieland.service.impl;

import com.movieland.dao.ReviewDao;
import com.movieland.entity.Review;
import com.movieland.entity.Movie;
import com.movieland.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewServiceImpl implements ReviewService {

    private ReviewDao reviewDao;

    @Override
    public List<Review> getByMovieId(int id) { return reviewDao.getByMovieId(id); }

    @Override
    public void enrichMovie(Movie movie) {
        List<Review> reviews = getByMovieId(movie.getId());
        movie.setReviews(reviews);
    }

    @Autowired
    public void setReviewDao(ReviewDao reviewDao) {
        this.reviewDao = reviewDao;
    }
}
