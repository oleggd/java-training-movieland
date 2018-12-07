package com.movieland.entity;

public class Genre {

    private int id;
    private String name;

    public Genre(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public int getId() {
        return id;
    }

    public String toString(){
        return " Genre {" +
                " id : " + id + "," +
                " name : " + name;
    }
}
