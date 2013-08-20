// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.GalaxieEntry;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect GalaxieEntry_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager GalaxieEntry.entityManager;
    
    public static final EntityManager GalaxieEntry.entityManager() {
        EntityManager em = new GalaxieEntry().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long GalaxieEntry.countGalaxieEntrys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM GalaxieEntry o", Long.class).getSingleResult();
    }
    
    public static List<GalaxieEntry> GalaxieEntry.findAllGalaxieEntrys(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM GalaxieEntry o";
        if (sortFieldName != null) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName.replaceAll("\\W", "");
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, GalaxieEntry.class).getResultList();
    }
    
    public static GalaxieEntry GalaxieEntry.findGalaxieEntry(Long id) {
        if (id == null) return null;
        return entityManager().find(GalaxieEntry.class, id);
    }
    
    public static List<GalaxieEntry> GalaxieEntry.findGalaxieEntryEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM GalaxieEntry o";
        if (sortFieldName != null) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName.replaceAll("\\W", "");
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, GalaxieEntry.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void GalaxieEntry.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void GalaxieEntry.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            GalaxieEntry attached = GalaxieEntry.findGalaxieEntry(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void GalaxieEntry.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void GalaxieEntry.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public GalaxieEntry GalaxieEntry.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        GalaxieEntry merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
