package com.movieland.dao.jdbc.mapper;

import com.movieland.entity.Movie;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;

import static org.junit.Assert.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class MovieRowMapperTest {

    @Test
    public void mapRow() throws SQLException {

        MovieRowMapper movieRowMapper = new MovieRowMapper();
        ResultSet resultSet = mock(ResultSet.class);
        LocalDateTime currentTime = LocalDateTime.now();
        Timestamp currentTimestamp = Timestamp.valueOf(currentTime);

        when(resultSet.getInt("id")).thenReturn(25);
        when(resultSet.getString("name")).thenReturn("Первый фильм");
        when(resultSet.getString("name_orig")).thenReturn("First movie");
        when(resultSet.getInt("year")).thenReturn(2018);
        when(resultSet.getDouble("rating")).thenReturn(50.1);
        when(resultSet.getDouble("price")).thenReturn(125.3);
        when(resultSet.getTimestamp("creation_date")).thenReturn(currentTimestamp);
        when(resultSet.getString("url")).thenReturn("poster.jpg");

        Movie firstMovie = movieRowMapper.mapRow(resultSet,1);
        assertEquals(25, firstMovie.getId());
        assertEquals("Первый фильм", firstMovie.getName());
        assertEquals("First movie", firstMovie.getNameOriginal());
        assertEquals(2018, firstMovie.getYear());
        assertEquals(50.1, firstMovie.getRating(),0.01);
        assertEquals(125.3, firstMovie.getPrice(),0.01);
        assertEquals("poster.jpg", firstMovie.getPoster());
    }
}