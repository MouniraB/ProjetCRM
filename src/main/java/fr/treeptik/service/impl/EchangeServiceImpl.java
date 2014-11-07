package fr.treeptik.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fr.treeptik.dao.EchangeDAO;
import fr.treeptik.entity.Echange;
import fr.treeptik.service.EchangeService;

@Service
public class EchangeServiceImpl implements EchangeService{

	@Autowired
	EchangeDAO echangeDAO;
	
	public void add(Echange echange) {
		echangeDAO.save(echange);
	}

}
