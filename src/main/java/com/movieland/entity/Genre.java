package com.movieland.entity;

import java.time.LocalDateTime;

public class Genre {

    private int id;
    private String name;
    private LocalDateTime creationDate;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDateTime getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(LocalDateTime creationDate) {
        this.creationDate = creationDate;
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
                " name : " + name + "," +
                " creationDate : " + creationDate;
    }
}
