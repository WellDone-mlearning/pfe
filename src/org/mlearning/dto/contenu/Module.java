package org.mlearning.dto.contenu;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Module {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private int categorie;
	private String nom;

	
	
}
