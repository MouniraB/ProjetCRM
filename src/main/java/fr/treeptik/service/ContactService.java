package fr.treeptik.service;

import java.util.List;

import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Echange;

public interface ContactService {

	public void add(Contact contact);

	public List<Contact> getAll();
	
	public List<Contact> getAllClient();

	public List<Contact> getAllContact();

	public List<Contact> getAllProspect();
	
	public Contact get(Integer id);
	
    public void delete(Integer contactId);
    
    public List<Echange> getEchanges(Integer contactId);
}
