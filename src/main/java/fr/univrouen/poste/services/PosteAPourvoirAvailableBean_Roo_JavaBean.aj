// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.services;

import fr.univrouen.poste.domain.PosteAPourvoir;
import fr.univrouen.poste.services.PosteAPourvoirAvailableBean;

privileged aspect PosteAPourvoirAvailableBean_Roo_JavaBean {
    
    public PosteAPourvoir PosteAPourvoirAvailableBean.getPoste() {
        return this.poste;
    }
    
    public void PosteAPourvoirAvailableBean.setPoste(PosteAPourvoir poste) {
        this.poste = poste;
    }
    
    public Boolean PosteAPourvoirAvailableBean.getCandidat() {
        return this.candidat;
    }
    
    public void PosteAPourvoirAvailableBean.setCandidat(Boolean candidat) {
        this.candidat = candidat;
    }
    
}
