package com.movieland.dao.jdbc.mapper;

import com.movieland.entity.Country;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CountryRowMapper implements RowMapper<Country> {
    public Country mapRow (ResultSet resultSet, int rowId) throws SQLException {
        return new Country(resultSet.getInt("id"), resultSet.getString("name"));
    }
}
