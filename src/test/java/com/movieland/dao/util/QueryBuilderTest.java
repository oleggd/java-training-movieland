package com.movieland.dao.util;

import com.movieland.dao.jdbc.RequestParameters;
import org.junit.Test;

import static org.junit.Assert.*;

public class QueryBuilderTest {

    @Test
    public void getQueryWithParameters() {
        String testQuery = "SELECT A,B,C FROM TEST WHERE ORDER BY TEST ASC";

        RequestParameters requestParameters = new RequestParameters();
        requestParameters.setSortField("TEST");
        requestParameters.setSortDirection(SortDirection.ASC);
        assertEquals(testQuery,QueryBuilder.getQueryWithParameters("SELECT A,B,C FROM TEST WHERE", requestParameters));
    }
}