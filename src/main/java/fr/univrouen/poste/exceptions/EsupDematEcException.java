package fr.univrouen.poste.exceptions;

public class EsupDematEcException extends RuntimeException {

	private static final long serialVersionUID = 1L;
	
	public EsupDematEcException(String message) {
		super(message);
	}

	public EsupDematEcException(String message, Throwable cause) {
		super(message, cause);
	}

}
