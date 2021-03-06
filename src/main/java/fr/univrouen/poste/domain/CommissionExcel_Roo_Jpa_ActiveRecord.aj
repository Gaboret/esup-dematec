// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.CommissionExcel;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CommissionExcel_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CommissionExcel.entityManager;
    
    public static final List<String> CommissionExcel.fieldNames4OrderClauseFilter = java.util.Arrays.asList("filename", "bigFile", "file", "creation", "cells");
    
    public static final EntityManager CommissionExcel.entityManager() {
        EntityManager em = new CommissionExcel().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CommissionExcel.countCommissionExcels() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CommissionExcel o", Long.class).getSingleResult();
    }
    
    public static List<CommissionExcel> CommissionExcel.findAllCommissionExcels() {
        return entityManager().createQuery("SELECT o FROM CommissionExcel o", CommissionExcel.class).getResultList();
    }
    
    public static List<CommissionExcel> CommissionExcel.findAllCommissionExcels(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CommissionExcel o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CommissionExcel.class).getResultList();
    }
    
    public static CommissionExcel CommissionExcel.findCommissionExcel(Long id) {
        if (id == null) return null;
        return entityManager().find(CommissionExcel.class, id);
    }
    
    public static List<CommissionExcel> CommissionExcel.findCommissionExcelEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CommissionExcel o", CommissionExcel.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<CommissionExcel> CommissionExcel.findCommissionExcelEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CommissionExcel o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CommissionExcel.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CommissionExcel.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CommissionExcel.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CommissionExcel attached = CommissionExcel.findCommissionExcel(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CommissionExcel.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CommissionExcel.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CommissionExcel CommissionExcel.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CommissionExcel merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
