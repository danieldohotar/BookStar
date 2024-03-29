package com.bookStar.project.bookstar.service;


import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:beans.xml" })
public class BooksServiceTest extends BaseBooksServiceTest {

    @Autowired
    private BooksService booksService;


    @Override
    protected BooksService getBooksService () {
        return booksService;
    }
}
