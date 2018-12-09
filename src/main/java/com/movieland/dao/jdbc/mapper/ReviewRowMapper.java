package com.movieland.dao.jdbc.mapper;

import com.movieland.entity.Review;
import com.movieland.entity.User;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ReviewRowMapper implements RowMapper<Review> {
    public Review mapRow (ResultSet resultSet, int rowId) throws SQLException {
        Review review = new Review();
        review.setId(resultSet.getInt("id"));
        review.setDescription(resultSet.getString("description"));
        review.setUser(new User(resultSet.getInt("user_id"),
                                resultSet.getString("nick_name")));

        return review;
    }
}
