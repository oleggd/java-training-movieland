package com.movieland.controller;

import com.movieland.entity.Movie;
import com.movieland.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@Controller
public class MovieController {

    private MovieService movieService;

    @RequestMapping(path = "/v1/movie", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    @ResponseBody
    public List<Movie> getAll(HttpServletResponse response) throws IOException {
        return movieService.getAll();
    }

    @Autowired
    public void setMovieService(MovieService movieService) {
        this.movieService = movieService;
    }
}
