// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.GalaxieEntry;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect GalaxieEntry_Roo_Finder {
    
    public static Long GalaxieEntry.countFindGalaxieEntrysByNumEmploiAndNumCandidat(String numEmploi, String numCandidat) {
        if (numEmploi == null || numEmploi.length() == 0) throw new IllegalArgumentException("The numEmploi argument is required");
        if (numCandidat == null || numCandidat.length() == 0) throw new IllegalArgumentException("The numCandidat argument is required");
        EntityManager em = GalaxieEntry.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM GalaxieEntry AS o WHERE o.numEmploi = :numEmploi AND o.numCandidat = :numCandidat", Long.class);
        q.setParameter("numEmploi", numEmploi);
        q.setParameter("numCandidat", numCandidat);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<GalaxieEntry> GalaxieEntry.findGalaxieEntrysByNumEmploiAndNumCandidat(String numEmploi, String numCandidat) {
        if (numEmploi == null || numEmploi.length() == 0) throw new IllegalArgumentException("The numEmploi argument is required");
        if (numCandidat == null || numCandidat.length() == 0) throw new IllegalArgumentException("The numCandidat argument is required");
        EntityManager em = GalaxieEntry.entityManager();
        TypedQuery<GalaxieEntry> q = em.createQuery("SELECT o FROM GalaxieEntry AS o WHERE o.numEmploi = :numEmploi AND o.numCandidat = :numCandidat", GalaxieEntry.class);
        q.setParameter("numEmploi", numEmploi);
        q.setParameter("numCandidat", numCandidat);
        return q;
    }
    
    public static TypedQuery<GalaxieEntry> GalaxieEntry.findGalaxieEntrysByNumEmploiAndNumCandidat(String numEmploi, String numCandidat, String sortFieldName, String sortOrder) {
        if (numEmploi == null || numEmploi.length() == 0) throw new IllegalArgumentException("The numEmploi argument is required");
        if (numCandidat == null || numCandidat.length() == 0) throw new IllegalArgumentException("The numCandidat argument is required");
        EntityManager em = GalaxieEntry.entityManager();
        String jpaQuery = "SELECT o FROM GalaxieEntry AS o WHERE o.numEmploi = :numEmploi AND o.numCandidat = :numCandidat";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<GalaxieEntry> q = em.createQuery(jpaQuery, GalaxieEntry.class);
        q.setParameter("numEmploi", numEmploi);
        q.setParameter("numCandidat", numCandidat);
        return q;
    }
    
}
