package fr.treeptik.service;

import java.util.List;

import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Entreprise;

public interface EntrepriseService {

	public List<Entreprise> getAll();
    public void add(Entreprise entreprise);
    public void delete(Integer entrepriseId); 
	public Entreprise get(Integer id);
	public List<Contact> getContact(Integer entrepriseId);

}
