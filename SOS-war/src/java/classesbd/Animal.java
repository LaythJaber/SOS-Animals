/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classesbd;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author LAYTH
 */
@Entity
@Table(name = "animal")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Animal.findAll", query = "SELECT a FROM Animal a")
    , @NamedQuery(name = "Animal.findByIdanimal", query = "SELECT a FROM Animal a WHERE a.idanimal = :idanimal")
    , @NamedQuery(name = "Animal.findByEtat", query = "SELECT a FROM Animal a WHERE a.etat = :etat")
    , @NamedQuery(name = "Animal.findByTaille", query = "SELECT a FROM Animal a WHERE a.taille = :taille")
    , @NamedQuery(name = "Animal.findByEspece", query = "SELECT a FROM Animal a WHERE a.espece = :espece")
    , @NamedQuery(name = "Animal.findByType", query = "SELECT a FROM Animal a WHERE a.type = :type")
    , @NamedQuery(name = "Animal.findByAge", query = "SELECT a FROM Animal a WHERE a.age = :age")
    , @NamedQuery(name = "Animal.findByRegion", query = "SELECT a FROM Animal a WHERE a.region = :region")})
public class Animal implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idanimal")
    private Integer idanimal;
    @Size(max = 20)
    @Column(name = "etat")
    private String etat;
    @Size(max = 20)
    @Column(name = "taille")
    private String taille;
    @Size(max = 20)
    @Column(name = "espece")
    private String espece;
    @Size(max = 20)
    @Column(name = "type")
    private String type;
    @Size(max = 3)
    @Column(name = "age")
    private String age;
    @Size(max = 20)
    @Column(name = "region")
    private String region;

    public Animal() {
    }
 public Animal(String espece ,String type,String region ,String taille , String age ,String etat) {
        this.espece = espece;
        this.type = type;
        this.region = region;
        this.taille = taille;
        this.age = age;
        this.etat = etat;
        
    }
    public Animal(Integer idanimal) {
        this.idanimal = idanimal;
    }

    public Integer getIdanimal() {
        return idanimal;
    }

    public void setIdanimal(Integer idanimal) {
        this.idanimal = idanimal;
    }

    public String getEtat() {
        return etat;
    }

    public void setEtat(String etat) {
        this.etat = etat;
    }

    public String getTaille() {
        return taille;
    }

    public void setTaille(String taille) {
        this.taille = taille;
    }

    public String getEspece() {
        return espece;
    }

    public void setEspece(String espece) {
        this.espece = espece;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idanimal != null ? idanimal.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Animal)) {
            return false;
        }
        Animal other = (Animal) object;
        if ((this.idanimal == null && other.idanimal != null) || (this.idanimal != null && !this.idanimal.equals(other.idanimal))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "classesbd.Animal[ idanimal=" + idanimal + " ]";
    }
    
}
