package com.movieland.dao;

import com.movieland.entity.Currency;

import java.util.List;

public interface CurrencyDao {

    List<Currency> getAll();

    List<Currency> getById(String currencyCode);
}
