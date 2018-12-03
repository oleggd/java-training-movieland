package com.movieland.dao.util;

import com.movieland.dao.jdbc.RequestParameters;

public class QueryBuilder {

    public static String getQueryWithParameters (String querySQL, RequestParameters requestParameters) {
        if (requestParameters.getSortColumn() != null && requestParameters.getSortColumn() != null) {
            // return query with orderBy
            return querySQL + " ORDER BY " + requestParameters.getSortColumn() + " " + requestParameters.getSortDirection();
        }
        return querySQL;
    }
}
