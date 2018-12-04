package com.movieland.dao.jdbc;

import com.movieland.dao.util.SortDirection;

public class RequestParameters {

    private String sortField;
    private SortDirection sortDirection;

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
}
