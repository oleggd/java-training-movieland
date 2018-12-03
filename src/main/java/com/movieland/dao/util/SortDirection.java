package com.movieland.dao.util;

public enum SortDirection {
    ASC, DESC;

    public static boolean contains (String order) {
        for(SortDirection sortDirection : SortDirection.values() ){
            if (sortDirection.name().equalsIgnoreCase(order)) {
                return true;
            }
        }
        return false;
    }
}
