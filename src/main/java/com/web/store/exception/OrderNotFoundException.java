package com.web.store.exception;

public class OrderNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	Integer oId;

	public Integer getoId() {
		return oId;
	}

	public void setoId(Integer oId) {
		this.oId = oId;
	}

	public OrderNotFoundException(Integer oId) {
		this.oId=oId;
	}

	public OrderNotFoundException() {

	}
	public OrderNotFoundException(String message,Integer oId) {
		super(message);
		this.oId = oId;

	}

	public OrderNotFoundException(String message) {
		super(message);

	}

	public OrderNotFoundException(Throwable cause) {
		super(cause);

	}

	public OrderNotFoundException(String message, Throwable cause) {
		super(message, cause);

	}

	public OrderNotFoundException(String message, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);

	}

}
