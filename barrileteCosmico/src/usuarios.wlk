import localidades.*
import barrileteCosmico.*
import viajes.*
import mediosDeTransporte.*

class Usuario {

	var nombreDeUsuario
	var viajes
	var cuenta
	var seguidores
	var localidad

	method viajes() {
		return viajes
	}

	method localidad() {
		return localidad
	}

	method localidad(unaLocalidad) {
		localidad = unaLocalidad
	}

	method seguidores() {
		return seguidores
	}

	method cuenta(unaCuenta) {
		cuenta = unaCuenta
	}

	method cuenta() {
		return cuenta
	}

//punto 5
	method viajarHacia(unDestino, unTransporte) {
		const unViaje = new Viaje(origen = localidad, destino = unDestino, transporte = unTransporte)
		const precio = unViaje.calcularPrecio()
		if (precio <= cuenta) {
			self.viajes().add(unViaje)
			cuenta -= precio
			self.localidad(unDestino)
		}
	}

//punto 6
	method kilometrosDeUnUsuario() {
		return viajes.map{ unViaje => unViaje.origen().distanciaHasta(unViaje.destino()) }.sum()
	}

//punto 7
	method seguirUsuario(otroUsuario) {
		seguidores.add(otroUsuario)
		otroUsuario.seguidores().add(self)
	}

}

const pabloHari = new Usuario(nombreDeUsuario = "PHari", viajes = [ new Viaje(origen = lastToninas, destino = goodAirs, transporte = medioTransporteX) ], cuenta = 1500, seguidores = #{}, localidad = lastToninas)

