package com.movieland.service.impl;

import com.movieland.dao.MovieDao;
import com.movieland.entity.Movie;
import com.movieland.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("movieService")
public class MovieServiceImpl implements MovieService {
    @Autowired
    private MovieDao movieDao;

    @Override
    public String getAll() {
        List<Movie> movies = movieDao.getAll();

        for (Movie movie : movies) {
            return movie.toString();
        }
        return "";
    }
}
