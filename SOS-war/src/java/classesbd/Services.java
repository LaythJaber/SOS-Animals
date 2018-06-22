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
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author LAYTH
 */
@Entity
@Table(name = "services")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Services.findAll", query = "SELECT s FROM Services s")
    , @NamedQuery(name = "Services.findByIdService", query = "SELECT s FROM Services s WHERE s.idService = :idService")
    , @NamedQuery(name = "Services.findByToilettage", query = "SELECT s FROM Services s WHERE s.toilettage = :toilettage")
    , @NamedQuery(name = "Services.findByTransport", query = "SELECT s FROM Services s WHERE s.transport = :transport")
    , @NamedQuery(name = "Services.findByEntretien", query = "SELECT s FROM Services s WHERE s.entretien = :entretien")
    , @NamedQuery(name = "Services.findByVeterinaire", query = "SELECT s FROM Services s WHERE s.veterinaire = :veterinaire")})
public class Services implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idService")
    private Integer idService;
    @Basic(optional = false)
    @NotNull
    @Column(name = "toilettage")
    private int toilettage;
    @Basic(optional = false)
    @NotNull
    @Column(name = "transport")
    private int transport;
    @Basic(optional = false)
    @NotNull
    @Column(name = "entretien")
    private int entretien;
    @Basic(optional = false)
    @NotNull
    @Column(name = "veterinaire")
    private int veterinaire;

    public Services() {
    }

    public Services(Integer idService) {
        this.idService = idService;
    }

    public Services(Integer idService, int toilettage, int transport, int entretien, int veterinaire) {
        this.idService = idService;
        this.toilettage = toilettage;
        this.transport = transport;
        this.entretien = entretien;
        this.veterinaire = veterinaire;
    }

    public Integer getIdService() {
        return idService;
    }

    public void setIdService(Integer idService) {
        this.idService = idService;
    }

    public int getToilettage() {
        return toilettage;
    }

    public void setToilettage(int toilettage) {
        this.toilettage = toilettage;
    }

    public int getTransport() {
        return transport;
    }

    public void setTransport(int transport) {
        this.transport = transport;
    }

    public int getEntretien() {
        return entretien;
    }

    public void setEntretien(int entretien) {
        this.entretien = entretien;
    }

    public int getVeterinaire() {
        return veterinaire;
    }

    public void setVeterinaire(int veterinaire) {
        this.veterinaire = veterinaire;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idService != null ? idService.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Services)) {
            return false;
        }
        Services other = (Services) object;
        if ((this.idService == null && other.idService != null) || (this.idService != null && !this.idService.equals(other.idService))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "classesbd.Services[ idService=" + idService + " ]";
    }
    
}
