package com.bookStar.project.bookstar.service;

import com.bookStar.project.bookstar.domain.Books;
import org.junit.After;
import org.junit.Test;

import java.util.Collection;
import java.util.LinkedList;

public abstract class BaseBooksServiceTest {

    protected abstract BooksService getBooksService();

    @After
    public void tearDown() {
        Collection<Books> books = new LinkedList<Books>(getBooksService().listAll());

        for (Books book : books) {
            getBooksService().delete(book.getId());
        }
    }

/*	@Test
	public void test_empty_get_all() {
		Collection<Books> books = getBooksService().listAll();
		Assert.assertTrue(books.isEmpty());
	}*/

    @Test(expected = ValidationException.class)
    public void test_add_no_title() throws ValidationException {
        Books book = new Books();
        book.setAuthor("Mircea");
        book.setGenre("Adventure");
        book.setLanguage("English");
        book.setPrice(30.00);
        book.setYear("1990");
        book.setPhotopath("/images/Bestiary");
        book.setSingle("/books/Oceanic");
        book.setComment("Best Book");
        getBooksService().save(book);
    }

    @Test(expected = ValidationException.class)
    public void test_add_no_author() throws ValidationException {
        Books book = new Books();
        book.setTitle("Iona");
        book.setGenre("Adventure");
        book.setLanguage("English");
        book.setPrice(30.00);
        book.setYear("1990");
        book.setPhotopath("/images/Bestiary");
        book.setSingle("/books/Oceanic");
        book.setComment("Best Book");
        getBooksService().save(book);
    }



    @Test(expected = ValidationException.class)
    public void test_add_no_genre() throws ValidationException {
        Books book = new Books();
        book.setTitle("Iona");
        book.setAuthor("Mircea");
        book.setLanguage("English");
        book.setPrice(30.00);
        book.setYear("1990");
        book.setPhotopath("/images/Bestiary");
        book.setSingle("/books/Oceanic");
        book.setComment("Best Book");
        getBooksService().save(book);
    }

    @Test(expected = ValidationException.class)
    public void test_add_no_language() throws ValidationException {
        Books book = new Books();
        book.setTitle("Iona");
        book.setAuthor("Mircea");
        book.setGenre("Adventure");
        book.setPrice(30.00);
        book.setYear("1990");
        book.setPhotopath("/images/Bestiary");
        book.setSingle("/books/Oceanic");
        book.setComment("Best Book");
        getBooksService().save(book);
    }

    @Test(expected = ValidationException.class)
    public void test_add_no_price() throws ValidationException {
        Books book = new Books();
        book.setTitle("Iona");
        book.setAuthor("Mircea");
        book.setGenre("Adventure");
        book.setLanguage("English");
        book.setYear("1990");
        book.setPhotopath("/images/Bestiary");
        book.setSingle("/books/Oceanic");
        book.setComment("Best Book");
        getBooksService().save(book);
    }

    @Test(expected = ValidationException.class)
    public void test_add_no_year() throws ValidationException {
        Books book = new Books();
        book.setTitle("Iona");
        book.setAuthor("Mircea");
        book.setGenre("Adventure");
        book.setLanguage("English");
        book.setPrice(32.99);
        book.setPhotopath("/images/Bestiary");
        book.setSingle("/books/Oceanic");
        book.setComment("Best Book");
        getBooksService().save(book);
    }

    @Test(expected = ValidationException.class)
    public void test_add_no_photopath() throws ValidationException {
        Books book = new Books();
        book.setTitle("Iona");
        book.setAuthor("Mircea");
        book.setGenre("Adventure");
        book.setLanguage("English");
        book.setPrice(32.99);
        book.setYear("2009");
        book.setSingle("/books/Oceanic");
        book.setComment("Best Book");
        getBooksService().save(book);
    }

    @Test(expected = ValidationException.class)
    public void test_add_no_singlepath() throws ValidationException {
        Books book = new Books();
        book.setTitle("Iona");
        book.setAuthor("Mircea");
        book.setGenre("Adventure");
        book.setLanguage("English");
        book.setPrice(32.99);
        book.setYear("2009");
        book.setPhotopath("/images/Oceanic");
        book.setComment("Best Book");
        getBooksService().save(book);
    }

    @Test(expected = ValidationException.class)
    public void test_add_no_comment() throws ValidationException {
        Books book = new Books();
        book.setTitle("Iona");
        book.setAuthor("Mircea");
        book.setGenre("Adventure");
        book.setLanguage("English");
        book.setPrice(32.99);
        book.setYear("2009");
        book.setPhotopath("/images/Oceanic");
        book.setSingle("/books/Mara");
        getBooksService().save(book);
    }
}