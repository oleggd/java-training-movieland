package com.movieland.dao.jdbc;

import com.movieland.dao.GenreDao;
import com.movieland.dao.jdbc.mapper.GenreRowMapper;
import com.movieland.entity.Genre;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class JdbcGenreDao implements GenreDao {

    private static final GenreRowMapper GENRE_ROW_MAPPER = new GenreRowMapper();
    private final Logger log = LoggerFactory.getLogger(getClass());
    private JdbcTemplate jdbcTemplate;
    private String getGenreAllSQL;
    private String getGenreByMovieIdSQL;

    @Override
    public List<Genre> getAll() {
        log.info("Get all genre request.");
        return jdbcTemplate.query(getGenreAllSQL, GENRE_ROW_MAPPER);
    }

    @Override
    public List<Genre> getByMovieId(int id) {
        log.info("Get all genre by movie id {}", id);
        return jdbcTemplate.query(getGenreByMovieIdSQL, GENRE_ROW_MAPPER, id);
    }

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Autowired
    public void setGetGenreAllSQL(String getGenreAllSQL) {
        this.getGenreAllSQL = getGenreAllSQL;
    }

    @Autowired
    public void setGetGenreByMovieIDSQL(String getGenreByMovieIdSQL) { this.getGenreByMovieIdSQL = getGenreByMovieIdSQL; }

}
