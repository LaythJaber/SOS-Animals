/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classesbd;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author LAYTH
 */
@Entity
@Table(name = "sansrefuge")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sansrefuge.findAll", query = "SELECT s FROM Sansrefuge s")
    , @NamedQuery(name = "Sansrefuge.findByIdSR", query = "SELECT s FROM Sansrefuge s WHERE s.idSR = :idSR")
    , @NamedQuery(name = "Sansrefuge.findByPerdu", query = "SELECT s FROM Sansrefuge s WHERE s.perdu = :perdu")
    , @NamedQuery(name = "Sansrefuge.findByEmplacement", query = "SELECT s FROM Sansrefuge s WHERE s.emplacement = :emplacement")
    , @NamedQuery(name = "Sansrefuge.findByNumPrioritaire", query = "SELECT s FROM Sansrefuge s WHERE s.numPrioritaire = :numPrioritaire")
    , @NamedQuery(name = "Sansrefuge.findByMailProp", query = "SELECT s FROM Sansrefuge s WHERE s.mailProp = :mailProp")
    , @NamedQuery(name = "Sansrefuge.findByDatededepot", query = "SELECT s FROM Sansrefuge s WHERE s.datededepot = :datededepot")
    , @NamedQuery(name = "Sansrefuge.findByDatedeliberation", query = "SELECT s FROM Sansrefuge s WHERE s.datedeliberation = :datedeliberation")
    , @NamedQuery(name = "Sansrefuge.findByAdoption", query = "SELECT s FROM Sansrefuge s WHERE s.adoption = :adoption")
    , @NamedQuery(name = "Sansrefuge.findByMaitre", query = "SELECT s FROM Sansrefuge s WHERE s.maitre = :maitre")})
public class Sansrefuge implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idSR")
    private Integer idSR;
    @Column(name = "perdu")
    private Integer perdu;
    @Size(max = 20)
    @Column(name = "emplacement")
    private String emplacement;
    @Column(name = "numPrioritaire")
    private Integer numPrioritaire;
    @Size(max = 40)
    @Column(name = "mailProp")
    private String mailProp;
    @Column(name = "datededepot")
    @Temporal(TemporalType.DATE)
    private Date datededepot;
    @Column(name = "datedeliberation")
    @Temporal(TemporalType.DATE)
    private Date datedeliberation;
    @Column(name = "adoption")
    private Integer adoption;
    @Size(max = 30)
    @Column(name = "maitre")
    private String maitre;

    public Sansrefuge() {
    }

    public Sansrefuge(Integer idSR) {
        this.idSR = idSR;
    }

    public Integer getIdSR() {
        return idSR;
    }

    public void setIdSR(Integer idSR) {
        this.idSR = idSR;
    }

    public Integer getPerdu() {
        return perdu;
    }

    public void setPerdu(Integer perdu) {
        this.perdu = perdu;
    }

    public String getEmplacement() {
        return emplacement;
    }

    public void setEmplacement(String emplacement) {
        this.emplacement = emplacement;
    }

    public Integer getNumPrioritaire() {
        return numPrioritaire;
    }

    public void setNumPrioritaire(Integer numPrioritaire) {
        this.numPrioritaire = numPrioritaire;
    }

    public String getMailProp() {
        return mailProp;
    }

    public void setMailProp(String mailProp) {
        this.mailProp = mailProp;
    }

    public Date getDatededepot() {
        return datededepot;
    }

    public void setDatededepot(Date datededepot) {
        this.datededepot = datededepot;
    }

    public Date getDatedeliberation() {
        return datedeliberation;
    }

    public void setDatedeliberation(Date datedeliberation) {
        this.datedeliberation = datedeliberation;
    }

    public Integer getAdoption() {
        return adoption;
    }

    public void setAdoption(Integer adoption) {
        this.adoption = adoption;
    }

    public String getMaitre() {
        return maitre;
    }

    public void setMaitre(String maitre) {
        this.maitre = maitre;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idSR != null ? idSR.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sansrefuge)) {
            return false;
        }
        Sansrefuge other = (Sansrefuge) object;
        if ((this.idSR == null && other.idSR != null) || (this.idSR != null && !this.idSR.equals(other.idSR))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "classesbd.Sansrefuge[ idSR=" + idSR + " ]";
    }
    
}
