package au.gov.nla.app.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import au.gov.nla.app.model.Book;

@Component
public class BookDAOImpl implements BookDAO {

	@PersistenceContext
	private EntityManager em;
	
	public Book getBookById(int bookId) {
        return em.createQuery("SELECT b FROM Book b WHERE b.id = :id", Book.class).setParameter("id", bookId).getSingleResult();		
	}

	public List<Book> getBooksByPerson(int personId) {
		Query query = em.createNativeQuery("select b.* from book b inner join loan l on b.id = l.bookid where l.personid = ?", Book.class);
		query.setParameter(1, personId);
		return query.getResultList();		
	}

}
