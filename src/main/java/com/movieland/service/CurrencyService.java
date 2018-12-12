package com.movieland.service;

import com.movieland.entity.Currency;

import java.util.Map;

public interface CurrencyService {

    Map<Currency, Double> getAll();

    Double getPriceByCurrency(Currency currency, double price);

}
