package com.movieland.service.impl;

import com.movieland.dao.GenreDao;
import com.movieland.entity.Genre;
import com.movieland.entity.Movie;
import com.movieland.service.GenreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GenreServiceImpl implements GenreService {

    private GenreDao genreDao;

    @Override
    public List<Genre> getAll() {
        return genreDao.getAll();
    }

    @Override
    public List<Genre> getByMovieId(int id) { return genreDao.getByMovieId(id); }

    @Override
    public void enrichMovie(Movie movie) {
        List<Genre> genres = getByMovieId(movie.getId());
        movie.setGenres(genres);
    }
    @Autowired
    public void setGenreDao(GenreDao genreDao) {
        this.genreDao = genreDao;
    }
}
