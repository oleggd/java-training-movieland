package com.movieland.dao.jdbc;

import com.movieland.dao.MovieDao;
import com.movieland.dao.jdbc.mapper.MovieRowMapper;
import com.movieland.entity.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;
import java.util.Map;

@Repository("JdbcMovieDao")
public class JdbcMovieDao implements MovieDao {

    private final static MovieRowMapper MOVIE_ROW_MAPPER = new MovieRowMapper();
    private JdbcTemplate jdbcTemplate;
    private NamedParameterJdbcTemplate namedJdbcTemplate;

    @Autowired
    private String getMovieAllSQL;

    @Override
    public List<Movie> getAll() {
        return jdbcTemplate.query(getMovieAllSQL, MOVIE_ROW_MAPPER);
    }
    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    @Autowired
    public void setNamedJdbcTemplate(NamedParameterJdbcTemplate namedJdbcTemplate) {
        this.namedJdbcTemplate = namedJdbcTemplate;
    }
}
