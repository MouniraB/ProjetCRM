package fr.treeptik.action;

import java.sql.Date;
import java.text.SimpleDateFormat;
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

import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Echange;
import fr.treeptik.entity.Entreprise;
import fr.treeptik.service.ContactService;
import fr.treeptik.service.EchangeService;
import fr.treeptik.service.EntrepriseService;
@Component(value = "contactAction")
@Scope("prototype")
@Namespace("/contact")
public class ContactAction extends ActionSupport implements
ModelDriven<Contact> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Autowired
	private ContactService contactService;
	
	@Autowired
	private EchangeService echangeService;
	
	@Autowired
	private EntrepriseService entrepriseService;
	
	private List<Contact> contacts = new ArrayList<Contact>();
	
	private Contact contact = new Contact();
	
	private List<Entreprise> entreprises = new ArrayList<Entreprise>();
	
	private Echange echange = new Echange();
	
	public Contact getModel() {
		return contact;
	}


	
	@Action(value = "ficheAction" ,results = {
			@Result(name = "success",  location = "/contact/fiche.jsp")})
	@SkipValidation
	public String fiche() throws Exception
	{
		contact = contactService.get(contact.getId());

		contact.setEchanges(contactService.getEchanges(contact.getId()));

		return SUCCESS;
	}	
	
	
	@Action(value = "initAddAction" ,results = {
			@Result(name = "success", location = "/contact/add.jsp")})
	@SkipValidation
	public String initAddContact() throws Exception {
		entreprises = entrepriseService.getAll();
		return "success";
	}
	
	@Action(value = "addAction" ,results = {
			@Result(name = "success", type = "redirectAction", location = "listActionContact"),
			@Result(name = "input", location = "/contact/add.jsp") })
	public String addContact() throws Exception {

		System.out.println(contact);
		
		contactService.add(contact);

		return "success";
	}	
	
	@Action(value = "listActionContact", results = {
			@Result(name = "success", location = "/contact/list.jsp")})
	@SkipValidation
	public String listContact() throws Exception {
		contacts = contactService.getAllContact();

		return "success";
	}

	
	@Action(value = "listActionClient", results = {
			@Result(name = "success", location = "/contact/list.jsp")})
	@SkipValidation
	public String listClient() throws Exception {
		contacts = contactService.getAllClient();
		return "success";
	}
	
	@Action(value = "listActionProspect", results = {
			@Result(name = "success", location = "/contact/list.jsp")})
	@SkipValidation
	public String listProspect() throws Exception {
		contacts = contactService.getAllProspect();
		return "success";
	}	
	
	
	
	@Action(value = "initUpdateAction" ,results = {
			@Result(name = "success", location = "/contact/add.jsp")})
	@SkipValidation
	public String initUpdate() throws Exception {
		
		contact = contactService.get(contact.getId());
		entreprises = entrepriseService.getAll();

		return "success";
	}	
	
	@Action(value = "deleteAction" ,results = {
			@Result(name = "success", type = "redirectAction", location = "listActionContact" )})
	@SkipValidation
	public String deleteContact() throws Exception
	{
		System.out.println("DELETE CONTACT");
		contactService.delete(contact.getId());
		return SUCCESS;
	}	
	
	@Action(value = "initAddEchangeAction" ,results = {
			@Result(name = "success", location = "/echange/add.jsp")})
	@SkipValidation
	public String initAddEchange() throws Exception {
		contacts = contactService.getAll();
		
		if(null != getContact() && null != getContact().getId())
			contact = contactService.get(getContact().getId());
		else
			contact.setId(-1);
		System.out.println("CONTACT :" + contact);

		
		
		return "success";
	}
	
	public void validate() {

		if ( null == getEchange() || null == getEchange().getDate()  ) {
			addFieldError("date", "Date obligatoire au format jj/mm/aaaa");
		}

	}
	
	
	@Action(value = "addEchangeAction" ,results = {
			@Result(name = "success", type = "redirectAction", location = "listActionContact"),
			@Result(name = "input", location = "/echange/add.jsp") })
	public String addEchange() throws Exception {

		System.out.println("dans addEchangeAction");
		System.out.println("echange" + echange);
		echange.setContact(contactService.get(contact.getId()));
		echangeService.add(echange);

		return "success";
	}
	

	public List<Contact> getContacts() {
		return contacts;
	}


	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}


	public Contact getContact() {
		return contact;
	}


	public void setContact(Contact contact) {
		this.contact = contact;
	}




	public List<Entreprise> getEntreprises() {
		return entreprises;
	}



	public void setEntreprises(List<Entreprise> entreprises) {
		this.entreprises = entreprises;
	}



	public Echange getEchange() {
		return echange;
	}



	public void setEchange(Echange echange) {
		this.echange = echange;
	}




	
	
	
}
