package com.movieland.entity;

import java.time.LocalDateTime;

public class Genre {

    private int id;
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String toString(){
        return " Genre {" +
                " id : " + id + "," +
                " name : " + name;
    }
}
