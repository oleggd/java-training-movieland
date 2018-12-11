package com.movieland.dao;

import com.movieland.entity.Genre;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Repository
@Primary
public class CachedGenreDao implements GenreDao {

    private final Logger log = LoggerFactory.getLogger(getClass());
    private GenreDao genreDao;
    private volatile List<Genre> genres;

    @Override
    public List<Genre> getAll() {
        return  new ArrayList<>(this.genres);
    }


    @PostConstruct
    @Scheduled(initialDelayString = "${cache.initialDelay:5000}", fixedDelayString = "${cache.fixedDelay:14400000}")
    public void refreshCache () {
        log.info("Refresh cache for genre.");
        this.genres = genreDao.getAll();
    }

    @Override
    public List<Genre> getByMovieId(int id) {
        log.info("Get all genre by movie id {}", id);
        return genreDao.getByMovieId(id);
    }
    @Autowired
    public void setGenreDao(GenreDao genreDao) {
        this.genreDao = genreDao;
    }


}
