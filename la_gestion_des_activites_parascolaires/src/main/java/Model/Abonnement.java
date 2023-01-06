package Model;

import java.util.Date;

public class Abonnement {
	private int idClub;
	private String nomAbonne;
	private String prenomAbonne;
	private Date dateAbonnement;
	public int getIdClub() {
		return idClub;
	}
	public void setIdClub(int idClub) {
		this.idClub = idClub;
	}
	public String getNomAbonne() {
		return nomAbonne;
	}
	public void setNomAbonne(String nomAbonne) {
		this.nomAbonne = nomAbonne;
	}
	public String getPrenomAbonne() {
		return prenomAbonne;
	}
	public void setPrenomAbonne(String prenomAbonne) {
		this.prenomAbonne = prenomAbonne;
	}
	public Date getDateAbonnement() {
		return dateAbonnement;
	}
	public void setDateAbonnement(Date dateAbonnement) {
		this.dateAbonnement = dateAbonnement;
	}
	public Abonnement(int idClub, String nomAbonne, String prenomAbonne, Date dateAbonnement) {
		super();
		this.idClub = idClub;
		this.nomAbonne = nomAbonne;
		this.prenomAbonne = prenomAbonne;
		this.dateAbonnement = dateAbonnement;
	}
	
}
