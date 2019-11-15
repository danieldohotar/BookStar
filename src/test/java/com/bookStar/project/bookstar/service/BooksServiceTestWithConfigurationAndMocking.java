package com.bookStar.project.bookstar.service;

import com.bookStar.project.bookstar.ApplicationConfiguration;
import com.bookStar.project.bookstar.dao.BooksDAO;

import org.junit.Before;

import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {ApplicationConfiguration.class})
public class BooksServiceTestWithConfigurationAndMocking extends BaseBooksServiceTest {

	@InjectMocks
	private BooksService service;

	@Mock
	private BooksDAO booksDAO;



	@Before
	public void setup() {

	}


	@Override
	protected BooksService getBooksService () {
		return service;
	}
}
