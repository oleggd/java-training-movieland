package com.movieland.dao;

import com.movieland.dao.jdbc.JdbcGenreDao;
import com.movieland.entity.Genre;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.test.web.servlet.MockMvc;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

public class CachedGenreDaoTest {

    private MockMvc mockMvc;

    @Mock
    GenreDao genreDao;
    @InjectMocks
    CachedGenreDao  cachedGenreDao = new CachedGenreDao();

    @Before
    public void setup() {
        MockitoAnnotations.initMocks(this);
        mockMvc = standaloneSetup(cachedGenreDao).build();
    }

    @Test
    public void getAllGenreTest() throws Exception {
        Genre firstGenre = new Genre(1, "боевик");
        Genre secondGenre = new Genre(2, "комедия");
        List<Genre> genres;
        LocalDateTime currentTime  = LocalDateTime.now();

        when(genreDao.getAll()).thenReturn(Arrays.asList(firstGenre, secondGenre));
        cachedGenreDao.refreshCache();
        genres = cachedGenreDao.getAll();
        genres = cachedGenreDao.getAll();
        assertEquals(2,genres.size());

        when(genreDao.getAll()).thenReturn(Arrays.asList(firstGenre, secondGenre,firstGenre, secondGenre));
        genres = cachedGenreDao.getAll();
        assertEquals(2,genres.size());
        cachedGenreDao.refreshCache();
        genres = cachedGenreDao.getAll();
        assertEquals(4,genres.size());

        verify(genreDao, times(2)).getAll();
        verifyNoMoreInteractions(genreDao);
    }
}