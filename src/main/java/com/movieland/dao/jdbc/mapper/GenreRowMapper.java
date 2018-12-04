package com.movieland.dao.jdbc.mapper;

import com.movieland.entity.Genre;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class GenreRowMapper implements RowMapper<Genre> {
    public Genre mapRow (ResultSet resultSet, int rowId) throws SQLException {

        Genre genre = new Genre(resultSet.getInt("id"), resultSet.getString("name"));
        return genre;
    }
}
