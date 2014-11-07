package fr.treeptik.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Contact implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue
	private Integer id;
	private String nom;
	private String prenom;
	private String mail;
	private String fixe;
	private String mobile;
	private String statut;

	
	@OneToMany(mappedBy="contact")
	List<Echange> echanges;
	
	@ManyToOne
	Entreprise entreprise;
	
	public Contact() {
	}


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getNom() {
		return nom;
	}


	public void setNom(String nom) {
		this.nom = nom;
	}


	public String getPrenom() {
		return prenom;
	}


	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public String getFixe() {
		return fixe;
	}


	public void setFixe(String fixe) {
		this.fixe = fixe;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public String getStatut() {
		return statut;
	}
	public void setStatut(String statut) {
		this.statut = statut;
	}
	

	public List<Echange> getEchanges() {
		return echanges;
	}


	public void setEchanges(List<Echange> echanges) {
		this.echanges = echanges;
	}


	public Entreprise getEntreprise() {
		return entreprise;
	}


	public void setEntreprise(Entreprise entreprise) {
		this.entreprise = entreprise;
	}


	@Override
	public String toString() {
		return "Contact [id=" + id + ", nom=" + nom + ", prenom=" + prenom
				+ ", mail=" + mail + ", fixe=" + fixe + ", mobile=" + mobile
				+ ", statut=" + statut + "]";
	}
	
	
	
}
