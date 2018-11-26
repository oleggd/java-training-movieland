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
    private final Logger log = LoggerFactory.getLogger(getClass());

    @Test
    public void mapRow() throws SQLException {
        log.info("Test: map rows started...");

        GenreRowMapper movieRowMapper = new GenreRowMapper();
        ResultSet resultSet           = mock(ResultSet.class);
        LocalDateTime currentTime     = LocalDateTime.now();
        Timestamp currentTimestamp    = Timestamp.valueOf(currentTime);

        log.debug("Test: set test data");
        when(resultSet.getInt("id")).thenReturn(1);
        when(resultSet.getString("name")).thenReturn("боевик");
        when(resultSet.getTimestamp("creation_date")).thenReturn(currentTimestamp);

        Genre firstGenre = movieRowMapper.mapRow(resultSet,1);
        log.debug("Test: run test");
        assertEquals(1, firstGenre.getId());
        assertEquals("боевик", firstGenre.getName());
        //assertEquals(currentTimestamp, firstGenre.getCreationDate());
        log.info("Test: map rows finished...");
    }
}