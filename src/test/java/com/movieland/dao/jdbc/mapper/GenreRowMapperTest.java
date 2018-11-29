package com.movieland.dao.jdbc.mapper;

import com.movieland.entity.Genre;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.temporal.TemporalAccessor;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class GenreRowMapperTest {
    @Test
    public void mapRow() throws SQLException {

        GenreRowMapper movieRowMapper = new GenreRowMapper();
        ResultSet resultSet           = mock(ResultSet.class);

        when(resultSet.getInt("id")).thenReturn(1);
        when(resultSet.getString("name")).thenReturn("боевик");

        Genre firstGenre = movieRowMapper.mapRow(resultSet,1);
        assertEquals(1, firstGenre.getId());
        assertEquals("боевик", firstGenre.getName());
    }
}