package com.stock

class Producto {

	String code
	String detail
	String size    // numerico si es calzado - string si es ropa
	String color // -> de un color puede haber cierta cantidad y de otro color tambien, ojo
	Categoria category
	int quantity
	Marca trade // Marca
	double costPrice 
	double soldPrice
	boolean status // 1- activo - 0 - no activo
	Date enterDate = new Date()
	Date soldDate = new Date()

    static constraints = {
		code blank: false, unique: true, maxSize: 50
		detail blank: false, maxSize: 100
		size blank: false, maxSize: 5
		color blank: false
		category blank: false
		quantity min: 0
		trade blank: false
		//costPrice min: 0.0
		//soldPrice min: 0.0
		status blank: false
		enterDate display: false, format: "dd-MM-yyyy", blank: false
		soldDate display: false, format: "dd-MM-yyyy", blank: false
    }
}
