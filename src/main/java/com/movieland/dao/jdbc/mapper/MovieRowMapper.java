package com.movieland.dao.jdbc.mapper;

import com.movieland.entity.Movie;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class MovieRowMapper implements RowMapper<Movie> {
    public Movie mapRow (ResultSet resultSet, int rowId) throws SQLException {
        Movie movie = new Movie();

        movie.setId(resultSet.getInt("id"));
        movie.setName(resultSet.getString("name"));
        movie.setNameOriginal(resultSet.getString("name_orig"));
        movie.setYear(resultSet.getInt("year"));
        movie.setRating(resultSet.getDouble("rating"));
        movie.setPrice(resultSet.getDouble("price"));
        movie.setDescription(resultSet.getString("description"));
        movie.setPoster(resultSet.getString("url"));
        return movie;
    }
}
