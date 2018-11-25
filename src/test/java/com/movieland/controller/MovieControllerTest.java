package com.movieland.controller;

import com.movieland.entity.Movie;
import com.movieland.service.impl.MovieServiceImpl;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
//import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Arrays;

import static org.hamcrest.collection.IsCollectionWithSize.hasSize;
import static org.hamcrest.CoreMatchers.is;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

public class MovieControllerTest {

    private MockMvc mockMvc;
    @Mock
    MovieServiceImpl movieService;
    @InjectMocks
    MovieController movieController = new MovieController();

    @Before
    public void setup() {
        MockitoAnnotations.initMocks(this);
        mockMvc = standaloneSetup(movieController).build();
    }

    @Test
    public void getAllMovieTest() throws Exception {

        Movie firstMovie = new Movie();
        Movie secondMovie = new Movie();
        LocalDateTime currentTime = LocalDateTime.now();
        Timestamp currentTimestamp = Timestamp.valueOf(currentTime);
        //
        firstMovie.setId(25);
        firstMovie.setName("Первый фильм");
        firstMovie.setNameOrig("First movie");
        firstMovie.setYear(2018);
        firstMovie.setCountry("USA");
        firstMovie.setRating(50.1);
        firstMovie.setPrice(125.3);
        firstMovie.setCreationDate(currentTime);
        firstMovie.setPoster("poster1.jpg");
        //
        secondMovie.setId(26);
        secondMovie.setName("Второй фильм");
        secondMovie.setNameOrig("Second movie");
        secondMovie.setYear(2000);
        secondMovie.setCountry("JPN");
        secondMovie.setRating(0.1);
        secondMovie.setPrice(25.3);
        secondMovie.setCreationDate(currentTime);
        secondMovie.setPoster("poster2.jpg");

        when(movieService.getAll()).thenReturn(Arrays.asList(firstMovie, secondMovie));

        mockMvc.perform(get("/v1/movie"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON_UTF8))
                .andExpect(jsonPath("$", hasSize(2)))
                .andExpect(jsonPath("$[0].id", is(25)))
                .andExpect(jsonPath("$[0].name", is("Первый фильм")))
                .andExpect(jsonPath("$[0].nameOrig", is("First movie")))
                .andExpect(jsonPath("$[0].year", is(2018)))
                .andExpect(jsonPath("$[0].rating", is(50.1)))
                .andExpect(jsonPath("$[0].price", is(125.3)))
                .andExpect(jsonPath("$[0].poster", is("poster1.jpg")))
                .andExpect(jsonPath("$[1].id", is(26)))
                .andExpect(jsonPath("$[1].name", is("Второй фильм")))
                .andExpect(jsonPath("$[1].nameOrig", is("Second movie")))
                .andExpect(jsonPath("$[1].year", is(2000)))
                .andExpect(jsonPath("$[1].rating", is(0.1)))
                .andExpect(jsonPath("$[1].price", is(25.3)))
                .andExpect(jsonPath("$[1].poster", is("poster2.jpg")));
    }
}

