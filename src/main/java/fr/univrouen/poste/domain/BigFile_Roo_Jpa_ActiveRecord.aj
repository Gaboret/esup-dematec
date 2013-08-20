// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.BigFile;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect BigFile_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager BigFile.entityManager;
    
    public static final EntityManager BigFile.entityManager() {
        EntityManager em = new BigFile().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long BigFile.countBigFiles() {
        return entityManager().createQuery("SELECT COUNT(o) FROM BigFile o", Long.class).getSingleResult();
    }
    
    public static List<BigFile> BigFile.findAllBigFiles() {
        return entityManager().createQuery("SELECT o FROM BigFile o", BigFile.class).getResultList();
    }
    
    public static List<BigFile> BigFile.findAllBigFiles(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM BigFile o";
        if (sortFieldName != null) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName.replaceAll("\\W", "");
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, BigFile.class).getResultList();
    }
    
    public static BigFile BigFile.findBigFile(Long id) {
        if (id == null) return null;
        return entityManager().find(BigFile.class, id);
    }
    
    public static List<BigFile> BigFile.findBigFileEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM BigFile o", BigFile.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<BigFile> BigFile.findBigFileEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM BigFile o";
        if (sortFieldName != null) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName.replaceAll("\\W", "");
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, BigFile.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void BigFile.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void BigFile.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            BigFile attached = BigFile.findBigFile(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void BigFile.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void BigFile.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public BigFile BigFile.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        BigFile merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
