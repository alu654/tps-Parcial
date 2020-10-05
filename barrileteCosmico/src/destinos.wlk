object garlicsSea {

	const nombre = "Garlic's Sea"
	var equipaje = [ "Caña de pescar", "Piloto" ]
	var precio = 2500

	method equipaje() {
		return equipaje
	}

	method nombre() {
		return nombre
	}

	method precio() {
		return precio
	}

	method precio(unPrecio) {
		precio = unPrecio
	}

	method esPeligroso() {
		return equipaje.any{ elemento => elemento.contains("Vacuna") }
	}

	method esDestacado() {
		return precio > 2000
	}

	method aplicarDescuento(unDescuento) {
		self.precio(precio * (1 - unDescuento))
		equipaje.add("Certificado de descuento")
	}

}

object silversSea {

	const nombre = "Silver's Sea"
	var equipaje = [ "Protector Solar", "Equipo de Buceo" ]
	var precio = 1350

	method equipaje() {
		return equipaje
	}

	method precio() {
		return precio
	}

	method nombre() {
		return nombre
	}

	method precio(unPrecio) {
		precio = unPrecio
	}

	method esPeligroso() {
		return equipaje.any{ elemento => elemento.contains("Vacuna") }
	}

	method esDestacado() {
		return precio > 2000
	}

	method aplicarDescuento(unDescuento) {
		self.precio(precio * (1 - unDescuento))
		equipaje.add("Certificado de descuento")
	}

}

object lastToninas {

	const nombre = "Last Toninas"
	var equipaje = [ "Vacuna gripal", "Vacuna B", "Necronomicón" ]
	var precio = 3500

	method equipaje() {
		return equipaje
	}

	method precio() {
		return precio
	}

	method nombre() {
		return nombre
	}

	method precio(unPrecio) {
		precio = unPrecio
	}

	method esPeligroso() {
		return equipaje.any{ elemento => elemento.contains("Vacuna") }
	}

	method esDestacado() {
		return precio > 2000
	}

	method aplicarDescuento(unDescuento) {
		self.precio(precio * (1 - unDescuento))
		equipaje.add("Certificado de descuento")
	}

}

object goodAirs {

	const nombre = "Good Airs"
	var equipaje = [ "Cerveza", "Protector Solar" ]
	var precio = 1500

	method equipaje() {
		return equipaje
	}

	method precio() {
		return precio
	}

	method nombre() {
		return nombre
	}

	method precio(unPrecio) {
		precio = unPrecio
	}

	method esPeligroso() {
		return equipaje.any{ elemento => elemento.contains("Vacuna") }
	}

	method esDestacado() {
		return precio > 2000
	}

	method aplicarDescuento(unDescuento) {
		self.precio(precio * (1 - unDescuento))
		equipaje.add("Certificado de descuento")
	}

}

