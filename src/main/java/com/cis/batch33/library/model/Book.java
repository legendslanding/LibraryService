package com.cis.batch33.library.model;

public class Book {
    private Integer bookId;
    private String author;
    private String publisher;
    private int yearOfPublish;

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public void setYearOfPublish(Integer yearOfPublish) {
        this.yearOfPublish = yearOfPublish;
    }

    public Integer getBookId() {
        return bookId;
    }

    public String getAuthor() {
        return author;
    }

    public String getPublisher() {
        return publisher;
    }

    public Integer getYearOfPublish() {
        return yearOfPublish;
    }
}
