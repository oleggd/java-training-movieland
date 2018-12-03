package com.movieland.controller;

import com.movieland.dao.jdbc.RequestParameters;
import com.movieland.dao.util.SortDirection;
import com.movieland.entity.Movie;
import com.movieland.service.MovieService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/movie")
public class MovieController {

    private final Logger log = LoggerFactory.getLogger(getClass());
    private MovieService movieService;

    @RequestMapping(method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public List<Movie> getAll(@RequestParam(value = "rating", required = false) String ratingOrder,
                              @RequestParam(value = "price", required = false) String priceOrder) {
        log.info("Get all movies.");
        RequestParameters requestParameters = getOrderRequestParameters(ratingOrder, priceOrder);

        return movieService.getAll(requestParameters);
    }

    private RequestParameters getOrderRequestParameters(String ratingOrder, String priceOrder) {
        RequestParameters requestParameters = new RequestParameters();

        if (ratingOrder != null) {
            if (SortDirection.valueOf(ratingOrder) != null) {
                requestParameters.setSortColumn("rating");
                requestParameters.setSortDirection(ratingOrder);
            } else {
                log.warn("Wrong order parameters : {}", ratingOrder);
            }
        } else if (priceOrder != null) {
            if (SortDirection.valueOf(ratingOrder) != null) {
                requestParameters.setSortColumn("price");
                requestParameters.setSortDirection(priceOrder);
            } else {
                log.warn("Wrong order parameters : {}", priceOrder);
            }
        }
        return requestParameters;
    }

    @RequestMapping(path = "/random", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public List<Movie> getRandom() {
        log.info("Get random movies.");
        return movieService.getRandom();
    }

    @RequestMapping(path = "/genre", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public List<Movie> getMovieByGenre(@RequestParam("id") int id,
                                       @RequestParam(value = "rating", required = false) String ratingOrder,
                                       @RequestParam(value = "price", required = false) String priceOrder) {
        log.info("Get movies by genre {}", id);
        RequestParameters requestParameters = getOrderRequestParameters(ratingOrder, priceOrder);
        return movieService.getByGenre(id, requestParameters);
    }

    @Autowired
    public void setMovieService(MovieService movieService) {
        this.movieService = movieService;
    }
}
