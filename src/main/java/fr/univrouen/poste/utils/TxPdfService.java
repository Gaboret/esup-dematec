package fr.univrouen.poste.utils;

import java.io.IOException;

import org.apache.log4j.Logger;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.univrouen.poste.domain.PosteCandidatureFile;

@Service
public class TxPdfService {

	private final Logger log = Logger.getLogger(getClass());
	
	@Transactional
	public void updateNbPages(Long pcFileId) throws IOException {
		
		PosteCandidatureFile pcFile = PosteCandidatureFile.findPosteCandidatureFile(pcFileId);
		
		PDDocument doc = null;
		try {
			doc = PDDocument.load(pcFile.getBigFile().getBinaryFile().getBinaryStream());
			long nbPages = (long)doc.getNumberOfPages();
			pcFile.setNbPages(nbPages);
			log.info(pcFile.getFilename() + " contient " + nbPages + " pages.");
		} catch (Exception e) {
			log.info("Exception reading " + pcFile.getFilename() + " like a pdf file for counting pages.", e);
		} finally {
			if(doc != null) {
				doc.close();
			}
		}

	}



}
