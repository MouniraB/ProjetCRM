package fr.treeptik.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Echange;

public interface ContactDAO extends JpaRepository<Contact, Integer>{

	
    @Query("select c from Contact c left join c.entreprise e where c.statut=:statut")
    public List<Contact> findAllContact(@Param("statut") String statut);
    
    @Query("select e from Contact c join c.echanges e where c.id=:id")
    public List<Echange> getEchanges(@Param("id") Integer contactId);
	
}
