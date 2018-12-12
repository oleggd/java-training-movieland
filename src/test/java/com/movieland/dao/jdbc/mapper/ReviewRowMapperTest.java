package com.movieland.dao.jdbc.mapper;

import com.movieland.entity.Review;
import com.movieland.entity.User;
import org.junit.Test;

import java.sql.ResultSet;
import java.sql.SQLException;

import static org.junit.Assert.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class ReviewRowMapperTest {

    @Test
    public void mapRow() throws SQLException {
        ReviewRowMapper reviewRowMapper = new ReviewRowMapper();
        ResultSet resultSet               = mock(ResultSet.class);

        when(resultSet.getInt("id")).thenReturn(1);
        when(resultSet.getString("description")).thenReturn("Review desciption");
        when(resultSet.getInt("user_id")).thenReturn(2);
        when(resultSet.getString("nick_name")).thenReturn("User nick");

        Review firstReview = reviewRowMapper.mapRow(resultSet,1);
        assertEquals(1, firstReview.getId());
        assertEquals("Review desciption", firstReview.getDescription());
        assertEquals(new User(2, "User nick") , firstReview.getUser());
    }
}