package com.bookStar.project.bookstar.domain;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class Books extends AbstractModel{

        @NotEmpty(message = "The Title of the book is mandatory")
        @Length(min = 2)
        private String title;

        @NotEmpty(message = "The Author of the book is mandatory")
        @Length(min = 3)
        private String author;

        @NotEmpty(message = "Genre is mandatory")
        @Length(min = 3)
        private String genre;

        @NotEmpty(message = "The Language of the book is mandatory")
        @Length(min = 3)
        private String language;

        private double price;

        @NotEmpty(message = "The Year of the book is mandatory")
        @Length(min = 3)
        private String year;

        @NotEmpty(message = "The path of the photo of the book is mandatory")
        @Length(min = 3)
        private String photopath;

        @NotEmpty(message = "The path of the book is mandatory")
        @Length(min = 3)
        private String single;

        @NotEmpty(message = "The comment of the book is mandatory")
        @Length(min = 3)
        private String comment;


    @Override
    public String toString() {
        return "Books{" +
                "title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", genre='" + genre + '\'' +
                ", language='" + language + '\'' +
                ", price=" + price +
                ", year=" + year +
                ", photopath='" + photopath + '\'' +
                ", single='" + single + '\'' +
                ", comment='" + comment + '\'' +
                '}';
    }

    public String getSingle() {
        return single;
    }

    public void setSingle(String single) {
        this.single = single;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getTitle() {
            return title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public String getAuthor() {
            return author;
        }

        public String getPhotopath() {
            return photopath;
        }

        public void setPhotopath(String photopath) {
            this.photopath = photopath;
        }

        public void setAuthor(String author) {
            this.author = author;
        }

        public String getGenre() {
            return genre;
        }

        public void setGenre(String genre) {
            this.genre = genre;
        }

        public String getLanguage() {
            return language;
        }

        public void setLanguage(String language) {
            this.language = language;
        }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public double getPrice() {
            return price;
        }

        public void setPrice(double price) {
            this.price = price;
        }

}



