package com.movieland.rest;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown = true)
public class CurrencyRates {

    //   [ {
    //        "r030":978,"txt":"Євро","rate":31.735021,"cc":"EUR","exchangedate":"11.12.2018"
    //    }]
    @JsonProperty("r030")
    private int id;
    @JsonProperty("txt")
    private String currencyName;
    private Double rate;
    @JsonProperty("cc")
    private String currencyCode;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getCurrencyName() {
        return currencyName;
    }
    public void setCurrencyName(String currencyName) {
        this.currencyName = currencyName;
    }
    public Double getRate() {
        return rate;
    }
    public void setRate(Double rate) {
        this.rate = rate;
    }
    public String getCurrencyCode() {
        return currencyCode;
    }
    public void setCurrencyCode(String currencyCode) {
        this.currencyCode = currencyCode;
    }

    @Override
    public String toString() {
        return "CurrencyRates{" +
                "id=" + id +
                ", currencyName='" + currencyName + '\'' +
                ", rate=" + rate +
                ", currencyCode='" + currencyCode + '\'' +
                '}';
    }
}
