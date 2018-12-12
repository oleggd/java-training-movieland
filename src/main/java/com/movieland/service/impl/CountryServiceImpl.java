package com.movieland.service.impl;

import com.movieland.dao.CountryDao;
import com.movieland.entity.Country;
import com.movieland.entity.Movie;
import com.movieland.service.CountryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryServiceImpl implements CountryService {

    private CountryDao countryDao;

    @Override
    public List<Country> getAll() {
        return countryDao.getAll();
    }

    @Override
    public List<Country> getByMovieId(int id) { return countryDao.getByMovieId(id); }

    @Override
    public void enrichMovie(Movie movie) {
        List<Country> countries = getByMovieId(movie.getId());
        movie.setCountries(countries);
    }

    @Autowired
    public void setCountryDao(CountryDao countryDao) {
        this.countryDao = countryDao;
    }
}
