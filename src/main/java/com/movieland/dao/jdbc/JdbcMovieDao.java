package com.movieland.dao.jdbc;

import com.movieland.dao.MovieDao;
import com.movieland.dao.jdbc.mapper.MovieRowMapper;
import com.movieland.entity.Movie;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("JdbcMovieDao")
public class JdbcMovieDao implements MovieDao {

    private final Logger log = LoggerFactory.getLogger(getClass());
    private final static MovieRowMapper MOVIE_ROW_MAPPER = new MovieRowMapper();
    private JdbcTemplate jdbcTemplate;
    private String getMovieAllSQL;

    @Override
    public List<Movie> getAll() {
        log.info("Get all movies request.");
        return jdbcTemplate.query(getMovieAllSQL, MOVIE_ROW_MAPPER);
    }
    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Autowired
    public void setGetMovieAllSQL(String getMovieAllSQL) {
        this.getMovieAllSQL = getMovieAllSQL;
    }
}
