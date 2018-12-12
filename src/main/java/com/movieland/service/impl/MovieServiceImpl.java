package com.movieland.service.impl;

import com.movieland.dao.MovieDao;
import com.movieland.dao.jdbc.RequestParameters;
import com.movieland.entity.Movie;
import com.movieland.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MovieServiceImpl implements MovieService {

    private MovieDao movieDao;
    private CountryService countryService;
    private GenreService genreService;
    private ReviewService reviewService;
    private CurrencyService currencyService;

    @Override
    public List<Movie> getAll(RequestParameters requestParameters) {
        return movieDao.getAll(requestParameters);
    }

    @Override
    public List<Movie> getRandom() { return movieDao.getRandom(); }

    @Override
    public List<Movie> getByGenre(int id, RequestParameters requestParameters) {
        return movieDao.getByGenre(id, requestParameters);
    }

    @Override
    public Movie getById(int id, RequestParameters requestParameters) {
        Movie movie = movieDao.getById(id);
        //get genre
        genreService.enrichMovie(movie);
        //get country
        countryService.enrichMovie(movie);
        //get reviews
        reviewService.enrichMovie(movie);
        // get rates
        // set converted price
        movie.setCurrency(requestParameters.getCurrency());
        movie.setPrice(currencyService.getPriceByCurrency(requestParameters.getCurrency(), movie.getPrice()));
        return movie;
    }

    @Autowired
    public void setMovieDao(MovieDao movieDao) {
        this.movieDao = movieDao;
    }

    @Autowired
    public void setCountryService(CountryService countryService) { this.countryService = countryService; }

    @Autowired
    public void setGenreService(GenreService genreService) { this.genreService = genreService; }

    @Autowired
    public void setReviewService(ReviewService reviewService) { this.reviewService = reviewService; }

    @Autowired
    public void setCurrencyService(CurrencyService currencyService) { this.currencyService = currencyService; }

}
