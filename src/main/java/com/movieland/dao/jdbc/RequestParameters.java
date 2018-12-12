package com.movieland.dao.jdbc;

import com.movieland.dao.util.SortDirection;
import com.movieland.entity.Currency;

import java.util.Objects;

public class RequestParameters {

    private String sortField;
    private SortDirection sortDirection;
    private Currency currency;

    public String getSortField() {
        return sortField;
    }

    public SortDirection getSortDirection() {
        return sortDirection;
    }

    public void setSortField(String sortField) {
        this.sortField = sortField;
    }

    public void setSortDirection(SortDirection sortDirection) {
        this.sortDirection = sortDirection;
    }


    public Currency getCurrency() { return currency; }

    public void setCurrency(Currency currency) { this.currency = currency; }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RequestParameters that = (RequestParameters) o;
        return Objects.equals(sortField, that.sortField) &&
                sortDirection == that.sortDirection &&
                currency == that.currency;
    }

    @Override
    public int hashCode() {

        return Objects.hash(sortField, sortDirection, currency);
    }
}
