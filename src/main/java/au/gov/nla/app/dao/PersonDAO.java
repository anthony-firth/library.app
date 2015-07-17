package au.gov.nla.app.dao;

import java.util.List;

import au.gov.nla.app.model.Person;

public interface PersonDAO {
	
	public Person getPersonById(int personId);
	
	public List<Person> getAllPeople();
	
}
