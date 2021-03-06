package fr.univrouen.poste.utils;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
public class PdfService {
	
	private final Logger log = Logger.getLogger(PdfService.class);
	
	@Resource
	TxPdfService txPdfService;
	
	@Async
	public void updateNbPages(Long pcFileId) {		
		try {
			txPdfService.updateNbPages(pcFileId);
		} catch (Exception e) {
			log.warn("updateNbPages failed on PosteCandidatureFile " + pcFileId);
		}
	}

	public void mergePdfs(List<InputStream> pdfFiles, String filename, OutputStream destStream) {
		txPdfService.mergePdfs(pdfFiles, filename, destStream);
	}

}
