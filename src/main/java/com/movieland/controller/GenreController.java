package com.movieland.controller;

import com.movieland.entity.Genre;
import com.movieland.service.GenreService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class GenreController {

    private final Logger log = LoggerFactory.getLogger(getClass());
    private GenreService genreService;

    @GetMapping(path = "/genre", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
    public List<Genre> getAll() {
        log.info("Get all genres.");
        return genreService.getAll();
    }

    @Autowired
    public void setMovieService(GenreService genreService) {
        this.genreService = genreService;
    }
}
