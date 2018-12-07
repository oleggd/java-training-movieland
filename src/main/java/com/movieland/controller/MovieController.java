package com.movieland.controller;

import com.movieland.controller.util.SortDirectionConverter;
import com.movieland.dao.jdbc.RequestParameters;
import com.movieland.dao.util.SortDirection;
import com.movieland.entity.Movie;
import com.movieland.service.MovieService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/movie")
public class MovieController {

    private final Logger log = LoggerFactory.getLogger(getClass());
    private MovieService movieService;

    @GetMapping(produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public List<Movie> getAll(@RequestParam(value = "rating", required = false) SortDirection ratingOrder,
                              @RequestParam(value = "price", required = false) SortDirection priceOrder) {
        log.info("Get all movies.");
        RequestParameters requestParameters = getOrderRequestParameters(ratingOrder, priceOrder);

        return movieService.getAll(requestParameters);
    }

    @GetMapping(path = "/random", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public List<Movie> getRandom() {
        log.info("Get random movies.");
        return movieService.getRandom();
    }

    @GetMapping(path = "/genre", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public List<Movie> getMovieByGenre(@RequestParam("id") int id,
                                       @RequestParam(value = "rating", required = false) SortDirection ratingOrder,
                                       @RequestParam(value = "price", required = false) SortDirection priceOrder) {
        log.info("Get movies by genre {}", id);
        RequestParameters requestParameters = getOrderRequestParameters(ratingOrder, priceOrder);
        return movieService.getByGenre(id, requestParameters);
    }

    @Autowired
    public void setMovieService(MovieService movieService) {
        this.movieService = movieService;
    }

    private RequestParameters getOrderRequestParameters(SortDirection ratingOrder, SortDirection priceOrder) {
        RequestParameters requestParameters = new RequestParameters();

        if (ratingOrder != null) {
            if (SortDirection.contains(ratingOrder)) {
                requestParameters.setSortField("rating");
                requestParameters.setSortDirection(ratingOrder);
            } else {
                log.warn("Wrong order parameters : {} ", ratingOrder);
            }
        } else if (priceOrder != null) {
            if (SortDirection.contains(priceOrder)) {
                requestParameters.setSortField("price");
                requestParameters.setSortDirection(priceOrder);
            } else {
                log.warn("Wrong order parameters : {} ", priceOrder);
            }
        }
        return requestParameters;
    }

    @InitBinder
    public void initBinder(final WebDataBinder webdataBinder) {
        webdataBinder.registerCustomEditor(SortDirection.class, new SortDirectionConverter());
    }

}
