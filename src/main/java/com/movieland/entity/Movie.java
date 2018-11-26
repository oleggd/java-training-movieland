package com.movieland.entity;

import java.time.LocalDateTime;

public class Movie {

    private int id;
    private String name;
    private String nameOriginal;
    private int year;
    private String country;
    private String description;
    private Double rating;
    private Double price;
    private LocalDateTime creationDate;
    private String poster;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNameOriginal() {
        return nameOriginal;
    }

    public void setNameOriginal(String nameOrig) {
        this.nameOriginal = nameOrig;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getRating() {
        return rating;
    }

    public void setRating(Double rating) {
        this.rating = rating;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
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

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String toString(){
        return " Movie {" +
                " id : " + id + "," +
                " name : " + name + "," +
                " nameOriginal : " + nameOriginal + "," +
                " year : " + year + "," +
                " country : " + country + "," +
                " description : " + description + "," +
                " rating : " + rating + "," +
                " price : " + price + "," +
                " creationDate : " + creationDate + "," +
                " poster : " + poster;
    }
}
