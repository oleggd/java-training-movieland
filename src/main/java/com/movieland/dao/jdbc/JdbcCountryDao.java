package com.movieland.dao.jdbc;

import com.movieland.dao.CountryDao;
import com.movieland.dao.jdbc.mapper.CountryRowMapper;
import com.movieland.entity.Country;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class JdbcCountryDao implements CountryDao {

    private static final CountryRowMapper COUNTRY_ROW_MAPPER = new CountryRowMapper();
    private final Logger log = LoggerFactory.getLogger(getClass());
    private JdbcTemplate jdbcTemplate;
    private String getCountryAllSQL;
    private String getCountryByMovieIDSQL;

    @Override
    public List<Country> getAll() {
        log.info("Get all country request.");
        return jdbcTemplate.query(getCountryAllSQL, COUNTRY_ROW_MAPPER);
    }

    @Override
    public List<Country> getByMovieId(int id) {
        log.info("Get country by movie id {}.", id);
        return jdbcTemplate.query(getCountryByMovieIDSQL, COUNTRY_ROW_MAPPER, id);
    }

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Autowired
    public void setGetCountryAllSQL(String getCountryAllSQL) {
        this.getCountryAllSQL = getCountryAllSQL;
    }

    @Autowired
    public void setGetCountryByMovieIDSQL(String getCountryByMovieIDSQL) { this.getCountryByMovieIDSQL = getCountryByMovieIDSQL; }

}
