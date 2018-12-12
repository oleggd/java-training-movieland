package com.movieland.dao;

import com.movieland.entity.Country;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Repository
@Primary
public class CachedCountryDao implements CountryDao {

    private final Logger log = LoggerFactory.getLogger(getClass());
    private CountryDao countryDao;
    private volatile List<Country> countries;

    @Override
    public List<Country> getAll() {
        return  new ArrayList<>(this.countries);
    }


    @PostConstruct
    @Scheduled(initialDelayString = "${cache.initialDelay:5000}", fixedDelayString = "${cache.fixedDelayCountry:86400000}")
    public void refreshCountryCash () {
        log.info("Refresh cache for countries.");
        this.countries = countryDao.getAll();
    }

    @Override
    public List<Country> getByMovieId(int id) {
        log.info("Get all country by movie id {}", id);
        return countryDao.getByMovieId(id);
    }
    @Autowired
    public void setCountryDao(CountryDao countryDao) {
        this.countryDao = countryDao;
    }


}
