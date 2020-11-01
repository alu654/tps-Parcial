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

class Playa inherits Localidad{
	 
	override method esPeligroso(){
		return false
	}
}

class Montania inherits Localidad{
	 
	var altura 
	
	override method esPeligroso(){
		return super() || altura > 5000
	}
	
	override method esDestacado(){
		return true
	}
}

class CiudadHistorica inherits Localidad{
	
	var cantidadMuseos
	
	override method esPeligroso(){
		return !equipaje.contains("Seguro de asistencia al viajero")
	}
	
	override method esDestacado(){
		return super() && cantidadMuseos >= 3
	}
	
}




const garlicsSea = new Playa(nombre = "Garlic's Sea", equipaje = [ "Caña de pescar", "Piloto" ], precio = 2500, kilometro = 10)

const silversSea = new Localidad(nombre = "Silver's Sea", equipaje = [ "Protector Solar", "Equipo de Buceo" ], precio = 1350, kilometro = 30)

const lastToninas = new CiudadHistorica(cantidadMuseos = 7,nombre = "Last Toninas", equipaje = [ "Vacuna gripal", "Vacuna B", "Necronomicón" ], precio = 3500, kilometro = 0)

const goodAirs = new Localidad(nombre = "Good Airs", equipaje = [ "Cerveza", "Protector Solar" ], precio = 1500, kilometro = 500)


