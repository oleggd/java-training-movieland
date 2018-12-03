package com.movieland.dao.jdbc;

import com.movieland.dao.MovieDao;
import com.movieland.dao.jdbc.mapper.MovieRowMapper;
import com.movieland.dao.util.QueryBuilder;
import com.movieland.entity.Movie;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class JdbcMovieDao implements MovieDao {

    private final static MovieRowMapper MOVIE_ROW_MAPPER = new MovieRowMapper();
    private final Logger log = LoggerFactory.getLogger(getClass());

    private JdbcTemplate jdbcTemplate;
    private String getMovieAllSQL;
    private String getMovieRandomSQL;
    private String getMovieByGenreSQL;

    @Value("${movie.randomCount:5}")
    private int randomCount;

    @Override
    public List<Movie> getAll(RequestParameters requestParameters) {
        log.info("Get all movies request.");
        // create sqlQuery based on parameters
        String sqlQuery = QueryBuilder.getQueryWithParameters(getMovieAllSQL, requestParameters);
        // call DB with new query
        return jdbcTemplate.query(sqlQuery, MOVIE_ROW_MAPPER);
    }

    @Override
    public List<Movie> getRandom() {
        log.info("Get random movie.");
        log.debug("Get random movie request : {}", randomCount);
        return jdbcTemplate.query(getMovieRandomSQL, MOVIE_ROW_MAPPER, randomCount);
    }

    @Override
    public List<Movie> getByGenre(int id, RequestParameters requestParameters) {
        log.info("Get movie by genre {}", id);
        // create sqlQuery based on parameters
        String sqlQuery = QueryBuilder.getQueryWithParameters(getMovieByGenreSQL, requestParameters);
        // call DB with new query
        return jdbcTemplate.query(sqlQuery, MOVIE_ROW_MAPPER, id);
    }

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Autowired
    public void setGetMovieAllSQL(String getMovieAllSQL) {
        this.getMovieAllSQL = getMovieAllSQL;
    }

    @Autowired
    public void setGetMovieRandomSQL(String getMovieRandomSQL) {
        this.getMovieRandomSQL = getMovieRandomSQL;
    }

    @Autowired
    public void setGetMovieByGenreSQL(String getMovieByGenreSQL) {
        this.getMovieByGenreSQL = getMovieByGenreSQL;
    }

}
