package com.movieland.dao;

import com.movieland.entity.Country;

import java.util.List;

public interface CountryDao {

    List<Country> getAll();

    List<Country> getByMovieId(int id);
}
