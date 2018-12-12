package com.movieland.dao;

import com.movieland.entity.Country;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.test.web.servlet.MockMvc;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

public class CachedCountryDaoTest {

    private MockMvc mockMvc;

    @Mock
    CountryDao countryDao;
    @InjectMocks
    CachedCountryDao  cachedCountryDao = new CachedCountryDao();

    @Before
    public void setup() {
        MockitoAnnotations.initMocks(this);
        mockMvc = standaloneSetup(cachedCountryDao).build();
    }

    @Test
    public void getAllCountryTest() throws Exception {
        Country firstCountry = new Country(4, "Италия");
        Country secondCountry = new Country(6, "Япония");
        List<Country> countries;
        LocalDateTime currentTime  = LocalDateTime.now();

        when(countryDao.getAll()).thenReturn(Arrays.asList(firstCountry, secondCountry));
        cachedCountryDao.refreshCountryCache();
        countries = cachedCountryDao.getAll();
        countries = cachedCountryDao.getAll();
        assertEquals(2,countries.size());

        when(countryDao.getAll()).thenReturn(Arrays.asList(firstCountry, secondCountry,firstCountry, secondCountry));
        countries = cachedCountryDao.getAll();
        assertEquals(2,countries.size());
        cachedCountryDao.refreshCountryCache();
        countries = cachedCountryDao.getAll();
        assertEquals(4,countries.size());

        verify(countryDao, times(2)).getAll();
        verifyNoMoreInteractions(countryDao);
    }
}