package com.movieland.entity;

import java.util.List;

public class Movie {

    private int id;
    private String name;
    private String nameOriginal;
    private int year;
    private String description;
    private Double rating;
    private Currency currency;
    private Double price;
    private String poster;
    private List<Country> countries;
    private List<Genre> genres;
    private List<Review> reviews;

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

    public List<Country> getCountry() {
        return countries;
    }

    public void setCountries(List<Country> countries) {
        this.countries = countries;
    }

    public List<Genre> getGenres() { return genres; }

    public void setGenres(List<Genre> genres) { this.genres = genres; }

    public List<Review> getReviews() { return reviews; }

    public void setReviews(List<Review> reviews) { this.reviews = reviews; }

    public String getDescription() { return description; }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getRating() {
        return rating;
    }

    public void setRating(Double rating) {
        this.rating = rating;
    }

    public Currency getCurrency() { return currency; }

    public void setCurrency(Currency currency) { this.currency = currency; }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
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
                " description : " + description + "," +
                " rating : " + rating + "," +
                " price : " + price + "," +
                " poster : " + poster;
    }
}
