class Localidad {

	const nombre
	var equipaje
	var precio
	var kilometro

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

	method kilometro() {
		return kilometro
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

	method distanciaHasta(otraLocalidad) {
		return (kilometro - otraLocalidad.kilometro()).abs()
	}

}

const garlicsSea = new Localidad(nombre = "Garlic's Sea", equipaje = [ "Caña de pescar", "Piloto" ], precio = 2500, kilometro = 0)

const silversSea = new Localidad(nombre = "Silver's Sea", equipaje = [ "Protector Solar", "Equipo de Buceo" ], precio = 1350, kilometro = 30)

const lastToninas = new Localidad(nombre = "Last Toninas", equipaje = [ "Vacuna gripal", "Vacuna B", "Necronomicón" ], precio = 3500, kilometro = 0)

const goodAirs = new Localidad(nombre = "Good Airs", equipaje = [ "Cerveza", "Protector Solar" ], precio = 1500, kilometro = 500)


