package com.movieland.dao.jdbc.mapper;

import com.movieland.entity.Genre;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class GenreRowMapper implements RowMapper<Genre> {
    public Genre mapRow (ResultSet resultSet, int rowId) throws SQLException {
        Genre genre = new Genre();

        genre.setId(resultSet.getInt("id"));
        genre.setName(resultSet.getString("name"));
        Timestamp creationDate = resultSet.getTimestamp("creation_date");
        genre.setCreationDate(creationDate.toLocalDateTime());
        return genre;
    }
}
