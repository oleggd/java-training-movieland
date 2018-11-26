package com.genreland.controller;

import com.movieland.controller.GenreController;
import com.movieland.entity.Genre;
import com.movieland.service.impl.GenreServiceImpl;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Arrays;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.collection.IsCollectionWithSize.hasSize;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;


public class GenreControllerTest {

    private MockMvc mockMvc;
    private final Logger log = LoggerFactory.getLogger(getClass());

    @Mock
    GenreServiceImpl genreService;
    @InjectMocks
    GenreController genreController = new GenreController();

    @Before
    public void setup() {
        MockitoAnnotations.initMocks(this);
        mockMvc = standaloneSetup(genreController).build();
    }

    @Test
    public void getAllGenreTest() throws Exception {
        log.info("Test: get all genres started...");
        Genre firstGenre = new Genre();
        Genre secondGenre = new Genre();
        LocalDateTime currentTime = LocalDateTime.now();
        Timestamp currentTimestamp = Timestamp.valueOf(currentTime);
        //
        log.debug("Test: get all genres - adding first genre");
        firstGenre.setId(1);
        firstGenre.setName("боевик");
        firstGenre.setCreationDate(currentTime);
        //
        log.debug("Test: get all genres - adding second genre");
        secondGenre.setId(2);
        secondGenre.setName("комедия");
        secondGenre.setCreationDate(currentTime);

        when(genreService.getAll()).thenReturn(Arrays.asList(firstGenre, secondGenre));

        log.debug("Test: get all genres - running tests");
        mockMvc.perform(get("/genre"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.APPLICATION_JSON_UTF8))
                .andExpect(jsonPath("$", hasSize(2)))
                .andExpect(jsonPath("$[0].id", is(1)))
                .andExpect(jsonPath("$[0].name", is("боевик")))
                .andExpect(jsonPath("$[1].id", is(2)))
                .andExpect(jsonPath("$[1].name", is("комедия")))                ;

        verify(genreService, times(1)).getAll();
        verifyNoMoreInteractions(genreService);
        log.info("Test: get all genres finished...");
    }
}

