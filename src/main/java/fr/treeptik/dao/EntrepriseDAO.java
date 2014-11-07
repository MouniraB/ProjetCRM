package fr.treeptik.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Entreprise;

public interface EntrepriseDAO extends JpaRepository<Entreprise, Integer>{

	@Query("SELECT c from Entreprise e left join e.contacts c  where c.entreprise.id = :id")
	List<Contact> findContact(@Param("id")Integer entrepriseId);

}
