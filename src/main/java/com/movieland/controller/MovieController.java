package com.movieland.web.controller;
import com.movieland.entity.Movie;
import com.movieland.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@Controller
public class MovieController {
    @Autowired
    private MovieService movieService;
    //PageGenerator pageGenerator = PageGenerator.instance();

    @RequestMapping(path = "/v1/movie", method = RequestMethod.GET)
    public void getAll(HttpServletResponse response) throws IOException {
        //List<Movie> movies = movieService.getAll();
        String movies = movieService.getAll();

        //HashMap<String, Object> parameters = new HashMap<>();
        //parameters.put("movies", movies);
        response.getWriter().write(movies);
        //String page = pageGenerator.getPage("movies", parameters);
        //response.getWriter().write(page);
    }
}
