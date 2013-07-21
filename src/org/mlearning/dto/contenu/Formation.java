package org.mlearning.dto.contenu;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class Formation implements java.io.Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String nom;
	private int client;
	private int debut;
	private int fin;
	
	@Transient
	private float progress;
	
	
	@OneToMany(mappedBy="formation")
	private List<Categorie> categorie;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public int getClient() {
		return client;
	}
	public void setClient(int client) {
		this.client = client;
	}
	public int getDebut() {
		return debut;
	}
	public void setDebut(int debut) {
		this.debut = debut;
	}
	public int getFin() {
		return fin;
	}
	public void setFin(int fin) {
		this.fin = fin;
	}
	public List<Categorie> getCategorie() {
		return categorie;
	}
	public void setCategorie(List<Categorie> categorie) {
		this.categorie = categorie;
	}
	public float getProgress() {
		java.util.Date date= new java.util.Date();
		long tmpTime =  date.getTime();
		String tmpString = String.valueOf( tmpTime );
		tmpString = tmpString.substring(0, 10);
		int currentTime =  Integer.parseInt(tmpString);
		System.out.println("\n\n\n" + currentTime);
		if(this.debut >= currentTime) setProgress(0);
		else if(this.fin <= currentTime) setProgress(100);
		else{
			float p = ( ( (currentTime - this.debut)*100 ) / this.fin );
			setProgress(p);
		}
		
		return progress;
	}
	public void setProgress(float progress) {
		this.progress = progress;
	}
	
	


	
	

	
	
}
