package au.gov.nla.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import au.gov.nla.app.model.Book;
import au.gov.nla.app.service.LibraryService;
 
@Controller
public class LibraryController {

	@Autowired
	private LibraryService libraryService;
		
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(@ModelAttribute("model") ModelMap model) {
        model.addAttribute("peopleList", libraryService.getAllPeople());
        model.addAttribute("bookList", libraryService.getAllBooks());
        return "index";
    }	

    @RequestMapping(value = "/getLoans", method = RequestMethod.GET)
    public @ResponseBody List<Book> getLoans(@RequestParam("personId") int personId) { 
    	List<Book> loans = libraryService.getBooksByPerson(personId);
    	return loans;
    }
    
    
}
