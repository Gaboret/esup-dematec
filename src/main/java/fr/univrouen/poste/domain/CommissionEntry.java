/**
 * Licensed to ESUP-Portail under one or more contributor license
 * agreements. See the NOTICE file distributed with this work for
 * additional information regarding copyright ownership.
 *
 * ESUP-Portail licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package fr.univrouen.poste.domain;
import java.util.List;

import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.Index;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString(excludeFields = {"membre","poste"})
@RooJpaActiveRecord(finders = { "findCommissionEntrysByNumPosteAndEmail", "findCommissionEntrysByMembre", "findCommissionEntrysByMembreIsNull", "findCommissionEntrysByPosteIsNull" })
public class CommissionEntry {

    public static final List<String> fieldNames4OrderClauseFilter = java.util.Arrays.asList("numPoste", "email", "nom", "prenom", "membre", "poste", "numPoste,email");

    @Index(name="num_postel_index")
    private String numPoste;

    @Index(name="email_index")
    private String email;

    private String nom;

    private String prenom;

    @ManyToOne(fetch=FetchType.LAZY)
    private User membre;

    @ManyToOne(fetch=FetchType.LAZY)
    private PosteAPourvoir poste;

    // don't care of upper/lower case for authentication with email ...
    public void setEmail(String email) {
        this.email = email.toLowerCase();
    }

    public Boolean getDeletable() {
        return membre == null && poste == null;
    }

}
