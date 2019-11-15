package com.bookStar.project.bookstar.service;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(classes = {ApplicationConfiguration.class})
public class BooksServiceTestWithConfiguration extends BaseBooksServiceTest {

	@Override
	protected BooksService getBooksService () {
		return service;
	}

	@Configuration
	@ComponentScan("com.bookStar.project")
	public static class SpringConfig {

	}
	@Autowired
	private BooksService service;


	
	
}
