// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.PosteAPourvoir;
import java.util.Date;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect PosteAPourvoir_Roo_Finder {
    
    public static Long PosteAPourvoir.countFindPosteAPourvoirsByDateEndSignupCandidatGreaterThan(Date dateEndSignupCandidat) {
        if (dateEndSignupCandidat == null) throw new IllegalArgumentException("The dateEndSignupCandidat argument is required");
        EntityManager em = PosteAPourvoir.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM PosteAPourvoir AS o WHERE o.dateEndSignupCandidat > :dateEndSignupCandidat", Long.class);
        q.setParameter("dateEndSignupCandidat", dateEndSignupCandidat);
        return ((Long) q.getSingleResult());
    }
    
    public static Long PosteAPourvoir.countFindPosteAPourvoirsByNumEmploi(String numEmploi) {
        if (numEmploi == null || numEmploi.length() == 0) throw new IllegalArgumentException("The numEmploi argument is required");
        EntityManager em = PosteAPourvoir.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM PosteAPourvoir AS o WHERE o.numEmploi = :numEmploi", Long.class);
        q.setParameter("numEmploi", numEmploi);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<PosteAPourvoir> PosteAPourvoir.findPosteAPourvoirsByDateEndSignupCandidatGreaterThan(Date dateEndSignupCandidat) {
        if (dateEndSignupCandidat == null) throw new IllegalArgumentException("The dateEndSignupCandidat argument is required");
        EntityManager em = PosteAPourvoir.entityManager();
        TypedQuery<PosteAPourvoir> q = em.createQuery("SELECT o FROM PosteAPourvoir AS o WHERE o.dateEndSignupCandidat > :dateEndSignupCandidat", PosteAPourvoir.class);
        q.setParameter("dateEndSignupCandidat", dateEndSignupCandidat);
        return q;
    }
    
    public static TypedQuery<PosteAPourvoir> PosteAPourvoir.findPosteAPourvoirsByDateEndSignupCandidatGreaterThan(Date dateEndSignupCandidat, String sortFieldName, String sortOrder) {
        if (dateEndSignupCandidat == null) throw new IllegalArgumentException("The dateEndSignupCandidat argument is required");
        EntityManager em = PosteAPourvoir.entityManager();
        String jpaQuery = "SELECT o FROM PosteAPourvoir AS o WHERE o.dateEndSignupCandidat > :dateEndSignupCandidat";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<PosteAPourvoir> q = em.createQuery(jpaQuery, PosteAPourvoir.class);
        q.setParameter("dateEndSignupCandidat", dateEndSignupCandidat);
        return q;
    }
    
    public static TypedQuery<PosteAPourvoir> PosteAPourvoir.findPosteAPourvoirsByNumEmploi(String numEmploi) {
        if (numEmploi == null || numEmploi.length() == 0) throw new IllegalArgumentException("The numEmploi argument is required");
        EntityManager em = PosteAPourvoir.entityManager();
        TypedQuery<PosteAPourvoir> q = em.createQuery("SELECT o FROM PosteAPourvoir AS o WHERE o.numEmploi = :numEmploi", PosteAPourvoir.class);
        q.setParameter("numEmploi", numEmploi);
        return q;
    }
    
    public static TypedQuery<PosteAPourvoir> PosteAPourvoir.findPosteAPourvoirsByNumEmploi(String numEmploi, String sortFieldName, String sortOrder) {
        if (numEmploi == null || numEmploi.length() == 0) throw new IllegalArgumentException("The numEmploi argument is required");
        EntityManager em = PosteAPourvoir.entityManager();
        String jpaQuery = "SELECT o FROM PosteAPourvoir AS o WHERE o.numEmploi = :numEmploi";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<PosteAPourvoir> q = em.createQuery(jpaQuery, PosteAPourvoir.class);
        q.setParameter("numEmploi", numEmploi);
        return q;
    }
    
}
