package com.stock

class Categoria {
	
	String detail
	int totalItems

    static constraints = {
		detail maxSize: 30
		totalItems min: 0
    }
}
