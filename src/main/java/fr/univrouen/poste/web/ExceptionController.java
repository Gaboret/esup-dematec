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
package fr.univrouen.poste.web;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartException;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import fr.univrouen.poste.domain.PosteCandidature;
import fr.univrouen.poste.services.LogService;


@Service
@Controller
public class ExceptionController implements HandlerExceptionResolver {
	
	private final Logger log = Logger.getLogger(getClass());

	@Autowired
	LogService logService;

	
	@Override
    public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
		
		if(ex instanceof AccessDeniedException) {
			return this.deniedHandler(request, response);
		}
		
        String ip = request.getRemoteAddr();	
		if(ex instanceof MultipartException) {
			log.warn("MultipartException with this client " + ip + ". We can assume that the client has canceled his request (because of a double-click / double-submit of the form for example).", ex);
		} else {	
			log.error("Uncaught exception  with this client " + ip, ex);
		}
		
		// hack for logging uploads failed 
		if(request.getServletPath().matches("/postecandidatures/[0-9]*/addFile")) {
			String posteCandidatureId = request.getServletPath().replaceAll("/postecandidatures/([0-9]*)/addFile", "$1");
			PosteCandidature posteCandidature = PosteCandidature.findPosteCandidature(Long.valueOf(posteCandidatureId));
			logService.logActionFile(LogService.UPLOAD_FAILED_ACTION, posteCandidature, null, request, new Date());
		}
		
    	//response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        ModelAndView modelAndview = new ModelAndView("uncaughtException");
        modelAndview.addObject("exception", ex);
        return modelAndview;
    }

	@RequestMapping("/denied")
    public ModelAndView deniedHandler(HttpServletRequest request, HttpServletResponse response) {
        String ip = request.getRemoteAddr();	
	    log.warn("Access Denied for " + ip);
        response.setStatus(HttpServletResponse.SC_FORBIDDEN);
		return new ModelAndView("accessDeniedException");
    }
	
   
}
