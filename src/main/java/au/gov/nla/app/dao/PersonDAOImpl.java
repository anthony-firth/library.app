package au.gov.nla.app.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import au.gov.nla.app.model.Person;

@Component
public class PersonDAOImpl implements PersonDAO {

	@PersistenceContext
	private EntityManager em;

	public Person getPersonById(int personId) {
        return em.createQuery("SELECT p FROM Person p WHERE p.id = :id", Person.class).setParameter("id", personId).getSingleResult();		
	}


	public List<Person> getAllPeople() {
        return em.createQuery("SELECT p FROM Person p", Person.class).getResultList();
	}

}
