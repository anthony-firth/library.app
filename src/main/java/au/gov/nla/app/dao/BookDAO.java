package au.gov.nla.app.dao;

import java.util.List;

import au.gov.nla.app.model.Book;

public interface BookDAO {
	
	public Book getBookById(int bookId);
	
	public List<Book> getBooksByPerson(int personId);
	
}
