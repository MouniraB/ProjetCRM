package fr.treeptik.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.treeptik.dao.ContactDAO;
import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Echange;
import fr.treeptik.service.ContactService;

@Service(value = "contactManager")
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDAO contactDAO;
	
	
	public void add(Contact contact)
	{
		contactDAO.save(contact);
	}
	public List<Contact> getAllContact() {
		return contactDAO.findAllContact("Contact");
	}
	
	public List<Contact> getAllClient() {
		return contactDAO.findAllContact("Client");
	}
	
	
	public List<Contact> getAllProspect() {
		return contactDAO.findAllContact("Prospect");
	}
	
	public Contact get(Integer id)
	{
		return contactDAO.findOne(id);
	}
	
    public void delete(Integer contactId) {
        contactDAO.delete(contactId);
    }
	public List<Echange> getEchanges(Integer contactId) {
		// TODO Auto-generated method stub
		return contactDAO.getEchanges(contactId);
	}
	public List<Contact> getAll() {
		return contactDAO.findAll();
	}

}
