package com.movieland.dao.jdbc;

public class RequestParameters {

    private String sortColumn;
    private String sortDirection;

    public String getSortColumn() {
        return sortColumn;
    }

    public String getSortDirection() {
        return sortDirection;
    }

    public void setSortColumn(String sortColumn) {
        this.sortColumn = sortColumn;
    }

    public void setSortDirection(String sortDirection) {
        this.sortDirection = sortDirection;
    }
}
