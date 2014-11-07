package fr.treeptik.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.interceptor.validation.SkipValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import fr.treeptik.entity.Entreprise;
import fr.treeptik.service.EntrepriseService;


@Component(value = "entrepriseAction")
@Scope("prototype")
@Namespace("/entreprise")
public class EntrepriseAction extends ActionSupport implements
ModelDriven<Entreprise> {


	private static final long serialVersionUID = 1L;

	@Autowired
	private EntrepriseService entrepriseService;
	
	private Entreprise entreprise = new Entreprise();
	
	private List<Entreprise> entreprises = new ArrayList<Entreprise>();
	
	
	public Entreprise getModel() {
		return entreprise;
	}

	
	public void validate() {

		if ( null == getEntreprise().getNom() || getEntreprise().getNom().trim().length() == 0) {
			addFieldError("nom", "Le nom est obligatoire");
		}

	}
	
	@Action(value = "listAction", results = {
			@Result(name = "success", location = "/entreprise/list.jsp")})
	@SkipValidation
	public String listContact() throws Exception {
		entreprises = entrepriseService.getAll();
		return "success";
	}

	@Action(value = "addAction" ,results = {
			@Result(name = "success", type = "redirectAction", location = "listAction"),
			@Result(name = "input", location = "/entreprise/add.jsp") })
	public String addContact() throws Exception {

		System.out.println(entreprise);
		
		entrepriseService.add(entreprise);

		return "success";
	}		
	
	@Action(value = "ficheAction" ,results = {
			@Result(name = "success",  location = "/entreprise/fiche.jsp")})
	@SkipValidation
	public String fiche() throws Exception
	{
		entreprise = entrepriseService.get(entreprise.getId());

		entreprise.setContacts(entrepriseService.getContact(entreprise.getId()));

		return SUCCESS;
	}
	@Action(value = "initUpdateAction" ,results = {
			@Result(name = "success", location = "/entreprise/add.jsp")})
	@SkipValidation
	public String initUpdate() throws Exception {
		
		entreprise = entrepriseService.get(entreprise.getId());

		return "success";
	}	
	
	@Action(value = "deleteAction" ,results = {
			@Result(name = "success", type = "redirectAction", location = "listAction" )})
	@SkipValidation
	public String deleteEmployee() throws Exception
	{
		System.out.println("DELETE EMPLOYEE");
		entrepriseService.delete(entreprise.getId());
		return SUCCESS;
	}		
	
	
	public EntrepriseService getEntrepriseService() {
		return entrepriseService;
	}

	public void setEntrepriseService(EntrepriseService entrepriseService) {
		this.entrepriseService = entrepriseService;
	}

	public Entreprise getEntreprise() {
		return entreprise;
	}

	public void setEntreprise(Entreprise entreprise) {
		this.entreprise = entreprise;
	}

	public List<Entreprise> getEntreprises() {
		return entreprises;
	}

	public void setEntreprises(List<Entreprise> entreprises) {
		this.entreprises = entreprises;
	}




	
	
}
