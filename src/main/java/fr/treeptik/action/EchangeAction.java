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
import fr.treeptik.service.ContactService;
import fr.treeptik.service.EchangeService;

@Component(value = "echangeAction")
@Scope("prototype")
@Namespace("/echange")
public class EchangeAction extends ActionSupport implements
ModelDriven<Echange> {

	@Autowired
	EchangeService echangeService;
	
	@Autowired
	ContactService contactService;
	
	private static final long serialVersionUID = 1L;
	
	private Echange echange = new Echange();
	
	private List<Contact> contacts = new ArrayList<Contact>();
	public Echange getModel() {
		return echange;
	}

	
	@Action(value = "initAddAction" ,results = {
			@Result(name = "success", location = "/echange/add.jsp")})
	@SkipValidation
	public String initAddContact() throws Exception {
		contacts = contactService.getAll();
		return "success";
	}
	
	public void validate() {

		if ( null == getEchange() || null == getEchange().getDate() || 0 == verifyDate(getEchange().getDate()) ) {
			addFieldError("date", "Date obligatoire au format jj/mm/aaaa");
		}

	}
    private int verifyDate(Date dateCurr) {
    	 
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        String s = dateCurr.toString();
        java.util.Date date = new java.util.Date();
        try {
            date = sdf.parse(s);
            String t = sdf.format(date);
            if(t.compareTo(s) !=  0)
            {
                System.out.println("Non valide");
                return 0;
            }
            
            else
            {
                System.out.println("valide");
                return 1;
            }
        } catch (Exception e) {
                System.out.println("Exception");
                return 0;
        }
    }
	
	
	@Action(value = "addAction" ,results = {
			@Result(name = "success", type = "redirectAction", location = "../contact/listActionContact"),
			@Result(name = "input", location = "/echange/add.jsp") })
	public String addEchange() throws Exception {

		System.out.println(echange);
		
		echangeService.add(echange);

		return "success";
	}


	public List<Contact> getContacts() {
		return contacts;
	}


	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}


	public Echange getEchange() {
		return echange;
	}


	public void setEchange(Echange echange) {
		this.echange = echange;
	}		
	
	
}
