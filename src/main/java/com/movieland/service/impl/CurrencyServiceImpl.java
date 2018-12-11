package com.movieland.service.impl;

import com.movieland.entity.Currency;
import com.movieland.rest.CurrencyRates;
import com.movieland.service.CurrencyService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.client.RestTemplate;

import javax.annotation.PostConstruct;
import java.util.HashMap;
import java.util.Map;

@Service
public class CurrencyServiceImpl implements CurrencyService {

    private final Logger log = LoggerFactory.getLogger(getClass());
    private volatile Map<Currency, Double> currencyRates;
    private String serviceURL;
    private RestTemplate restTemplate;

    @PostConstruct
    @Scheduled(initialDelayString = "${cache.initialDelay:5000}", fixedDelayString = "${cache.fixedDelayCurrency:86400000}")
    public void refreshCurrencyCache () {
        log.info("Refresh cache for currency.");
        this.currencyRates = getAll();
    }

    @Override
    public Map<Currency, Double> getAll() {

        restTemplate = new RestTemplate();
        CurrencyRates[] currencyExtRates = restTemplate.getForObject(serviceURL , CurrencyRates[].class);
        Map<Currency, Double> rates = new HashMap<>();
        for (CurrencyRates currencyRate : currencyExtRates) {
            if (Currency.contains(currencyRate.getCurrencyCode())) {
                rates.put(Currency.fromValue(currencyRate.getCurrencyCode()),currencyRate.getRate());
            }
        }
        return rates;
    }

    @Override
    public Double getPriceByCurrency(Currency currency, double price) {

        if (currencyRates.get(currency) != null && currencyRates.get(currency) != 0) {
            return  price / currencyRates.get(currency);
        }
        return price;
    }

    public void setRestTemplate(RestTemplate restTemplate) {
        this.restTemplate = restTemplate;
    }

    @Value("${currency.serviceUrl}")
    public void setServiceURL(String serviceURL) {        this.serviceURL = serviceURL;    }
}
