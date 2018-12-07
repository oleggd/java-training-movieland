package com.movieland.dao.util;

import java.util.Arrays;

public enum SortDirection {
    ASC, DESC;

    public static SortDirection fromValue(String value) {
        for (SortDirection sortDirection : values()) {
            if (sortDirection.name().equalsIgnoreCase(value)) {
                return sortDirection;
            }
        }
        throw new IllegalArgumentException(
                "Unknown enum type " + value + ", Allowed values are " + Arrays.toString(values()));
    }

    public static boolean contains (SortDirection order) {
        for(SortDirection sortDirection : SortDirection.values() ){
            if (sortDirection.name().equalsIgnoreCase(order.name())) {
                return true;
            }
        }
        return false;
    }
}
