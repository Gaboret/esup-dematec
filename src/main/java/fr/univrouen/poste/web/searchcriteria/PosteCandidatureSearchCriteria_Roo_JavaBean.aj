// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.web.searchcriteria;

import fr.univrouen.poste.domain.ManagerReview.ReviewStatusTypes;
import fr.univrouen.poste.web.searchcriteria.PosteCandidatureSearchCriteria;
import java.util.List;

privileged aspect PosteCandidatureSearchCriteria_Roo_JavaBean {
    
    public Boolean PosteCandidatureSearchCriteria.getRecevable() {
        return this.recevable;
    }
    
    public void PosteCandidatureSearchCriteria.setRecevable(Boolean recevable) {
        this.recevable = recevable;
    }
    
    public Boolean PosteCandidatureSearchCriteria.getAuditionnable() {
        return this.auditionnable;
    }
    
    public void PosteCandidatureSearchCriteria.setAuditionnable(Boolean auditionnable) {
        this.auditionnable = auditionnable;
    }
    
    public Boolean PosteCandidatureSearchCriteria.getModification() {
        return this.modification;
    }
    
    public void PosteCandidatureSearchCriteria.setModification(Boolean modification) {
        this.modification = modification;
    }
    
    public List<String> PosteCandidatureSearchCriteria.getNumEmploiPostes() {
        return this.numEmploiPostes;
    }
    
    public void PosteCandidatureSearchCriteria.setNumEmploiPostes(List<String> numEmploiPostes) {
        this.numEmploiPostes = numEmploiPostes;
    }
    
    public List<String> PosteCandidatureSearchCriteria.getEmailCandidats() {
        return this.emailCandidats;
    }
    
    public void PosteCandidatureSearchCriteria.setEmailCandidats(List<String> emailCandidats) {
        this.emailCandidats = emailCandidats;
    }
    
    public List<ReviewStatusTypes> PosteCandidatureSearchCriteria.getReviewStatus() {
        return this.reviewStatus;
    }
    
    public void PosteCandidatureSearchCriteria.setReviewStatus(List<ReviewStatusTypes> reviewStatus) {
        this.reviewStatus = reviewStatus;
    }
    
}
