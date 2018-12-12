package com.movieland.entity;

import java.util.Objects;

public class User {
    private int id;
    private String nickName;

    public User(int id, String nickName) {
        this.id = id;
        this.nickName = nickName;
    }

    public int getId() {
        return id;
    }

    public String getNickName() {
        return nickName;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", nickName='" + nickName + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id == user.id &&
                Objects.equals(nickName, user.nickName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, nickName);
    }
}
