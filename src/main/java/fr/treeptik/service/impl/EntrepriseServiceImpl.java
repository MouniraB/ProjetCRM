package fr.treeptik.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.treeptik.dao.EntrepriseDAO;
import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Entreprise;
import fr.treeptik.service.EntrepriseService;

@Service(value = "entrepriseManager")
public class EntrepriseServiceImpl implements EntrepriseService {

	@Autowired
	private EntrepriseDAO entrepriseDAO;
	
	public List<Entreprise> getAll()
	{
		return entrepriseDAO.findAll();
	}
	
    public void add(Entreprise entreprise) {
        entrepriseDAO.save(entreprise); 
    }
    
    public void delete(Integer entrepriseId)
    {
    	entrepriseDAO.delete(entrepriseId);
    }
    
	public Entreprise get(Integer id)
	{
		return entrepriseDAO.findOne(id);
	}

	public List<Contact> getContact(Integer entrepriseId)
	{
		return entrepriseDAO.findContact(entrepriseId);
	}


}
