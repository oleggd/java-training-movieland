package com.movieland.dao.jdbc;

import com.movieland.dao.ReviewDao;
import com.movieland.dao.jdbc.mapper.ReviewRowMapper;
import com.movieland.entity.Review;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class JdbcReviewDao implements ReviewDao {

    private static final ReviewRowMapper REVIEW_ROW_MAPPER = new ReviewRowMapper();
    private final Logger log = LoggerFactory.getLogger(getClass());
    private JdbcTemplate jdbcTemplate;
    private String getReviewByMovieIDSQL;

    @Override
    public List<Review> getByMovieId(int id) {
        log.info("Get review by movie id {}.", id);
        return jdbcTemplate.query(getReviewByMovieIDSQL, REVIEW_ROW_MAPPER, id);
    }

    @Autowired
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Autowired
    public void setGetReviewByMovieIDSQL(String getReviewByMovieIDSQL) { this.getReviewByMovieIDSQL = getReviewByMovieIDSQL; }

}
