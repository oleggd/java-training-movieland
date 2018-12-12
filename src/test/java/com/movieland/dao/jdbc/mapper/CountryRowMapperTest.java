package com.movieland.dao.jdbc.mapper;

import com.movieland.entity.Country;
import org.junit.Test;

import java.sql.ResultSet;
import java.sql.SQLException;

import static org.junit.Assert.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class CountryRowMapperTest {

    @Test
    public void mapRow() throws SQLException {
        CountryRowMapper countryRowMapper = new CountryRowMapper();
        ResultSet resultSet               = mock(ResultSet.class);

        when(resultSet.getInt("id")).thenReturn(1);
        when(resultSet.getString("name")).thenReturn("Италия");

        Country firstGenre = countryRowMapper.mapRow(resultSet,1);
        assertEquals(1, firstGenre.getId());
        assertEquals("Италия", firstGenre.getName());
    }

}