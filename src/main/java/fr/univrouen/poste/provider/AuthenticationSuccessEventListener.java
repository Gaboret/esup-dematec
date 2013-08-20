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
package fr.univrouen.poste.provider;

import javax.persistence.TypedQuery;

import org.springframework.context.ApplicationListener;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import fr.univrouen.poste.domain.User;

@Component
public class AuthenticationSuccessEventListener implements ApplicationListener<AuthenticationSuccessEvent> {

	@Override
	@Transactional
	public void onApplicationEvent(AuthenticationSuccessEvent ev) {
		
		String username = ev.getAuthentication().getName();

		TypedQuery<User> query = User.findUsersByEmailAddress(username, null, null);
		User targetUser = (User) query.getSingleResult();

	    if (targetUser != null) { // only for existing users
	    	targetUser.reportLoginOK();
	    	targetUser.persist();
	    }
	}

}
