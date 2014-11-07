package fr.treeptik.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.treeptik.entity.Echange;

public interface EchangeDAO extends JpaRepository<Echange, Integer>{

}
