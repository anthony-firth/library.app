package au.gov.nla.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import au.gov.nla.app.dao.BookDAO;
import au.gov.nla.app.dao.PersonDAO;
import au.gov.nla.app.model.Book;
import au.gov.nla.app.model.Person;

@Service
public class LibraryService {

	@Autowired
	private PersonDAO personDAO; 
	
	@Autowired
	private BookDAO bookDAO; 
	
	public List<Book> getBooksByPerson(int personId) { 
		return bookDAO.getBooksByPerson(personId);
	}
	
	public List<Person> getAllPeople() { 
		return personDAO.getAllPeople();
	}
	
	public List<Book> getAllBooks() { 
		return bookDAO.getAllBooks();
	}
	
}
