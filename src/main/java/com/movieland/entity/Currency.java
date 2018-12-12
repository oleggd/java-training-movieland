package com.movieland.entity;

import com.movieland.service.exception.AppException;

import java.util.Arrays;

public enum Currency {
    UAH, USD, EUR;

    public static Currency fromValue(String value) {
        for (Currency currency : values()) {
            if (currency.name().equalsIgnoreCase(value)) {
                return currency;
            }
        }
        throw new AppException(
                "Unknown enum type " + value + ", Allowed values are " + Arrays.toString(values()));
    }

    public static boolean contains (String currencyCode) {
        for(Currency currency : Currency.values() ){
            if (currency.name().equalsIgnoreCase(currencyCode)) {
                return true;
            }
        }
        return false;
    }
}
