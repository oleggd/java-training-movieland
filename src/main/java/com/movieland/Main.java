package com.movieland;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.*;
import org.apache.commons.dbcp2.*;


public class Main {
    private BasicDataSource connectionPool;

    public Main() throws URISyntaxException, SQLException {
        URI dbUri = new URI(System.getenv("DATABASE_URL"));
        String dbUrl = "jdbc:postgresql://localhost/movieland";// + dbUri.getHost() + dbUri.getPath();
        connectionPool = new BasicDataSource();

        //url=jdbc:postgresql://ec2-54-246-85-234.eu-west-1.compute.amazonaws.com:5432/d46rq5gob3pso9
        //username=izvuawpjlpravi
        //password=758ce78865b193a2af044f22826f731ae2b80dc2ad118d116f3c1325e3ad53bd

        //url=jdbc:postgresql://localhost/db2_onlineshop
        //user=postgres
        //password=1234
        connectionPool.setUsername("postgres");
        connectionPool.setPassword("1234");


        connectionPool.setDriverClassName("org.postgresql.Driver");
        connectionPool.setUrl(dbUrl);
        connectionPool.setInitialSize(1);

        Connection connection = connectionPool.getConnection();

        Statement stmt = connection.createStatement();
        //stmt.executeUpdate("CREATE TABLE IF NOT EXISTS ticks (tick timestamp)");
        //stmt.executeUpdate("INSERT INTO ticks VALUES (now())");
        ResultSet rs = stmt.executeQuery("SELECT * FROM movies");
        while (rs.next()) {
            System.out.println("Read from DB: " + rs.getTimestamp("name") + "\n");
        }

    }

}
