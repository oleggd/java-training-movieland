package com.movieland.controller;

import com.movieland.entity.Movie;
import com.movieland.service.MovieService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value = "/movie")
public class MovieController {

    private final Logger log = LoggerFactory.getLogger(getClass());
    private MovieService movieService;

    @RequestMapping(method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public List<Movie> getAll() throws IOException {
        log.info("Get all movies.");
        return movieService.getAll();
    }
    @RequestMapping(path = "/random", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public List<Movie> getRandom() throws IOException {
        log.info("Get random movies.");
        return movieService.getRandom();
    }
    @Autowired
    public void setMovieService(MovieService movieService) {
        this.movieService = movieService;
    }
}
