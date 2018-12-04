package com.movieland.dao.util;

import com.movieland.dao.jdbc.RequestParameters;

public class QueryBuilder {

    public static String getQueryWithParameters (String querySQL, RequestParameters requestParameters) {
        if (requestParameters.getSortField() != null && requestParameters.getSortField() != null) {
            // return query with orderBy
            return querySQL + " ORDER BY " + requestParameters.getSortField() + " " + requestParameters.getSortDirection();
        }
        return querySQL;
    }
}
