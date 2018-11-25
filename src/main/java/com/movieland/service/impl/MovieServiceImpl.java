package com.movieland.service.impl;

import com.movieland.dao.MovieDao;
import com.movieland.entity.Movie;
import com.movieland.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("movieService")
public class MovieServiceImpl implements MovieService {

    private MovieDao movieDao;

    @Override
    public List<Movie> getAll() {
        return movieDao.getAll();
    }

    @Override
    public List<Movie> getRandom() { return movieDao.getRandom(); }

    @Autowired
    public void setMovieDao(MovieDao movieDao) {
        this.movieDao = movieDao;
    }
}
