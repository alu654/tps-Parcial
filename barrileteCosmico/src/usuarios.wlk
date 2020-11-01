import localidades.*
import barrileteCosmico.*
import viajes.*
import mediosDeTransporte.*
import perfiles.*

class Usuario {

	var nombreDeUsuario
	var viajes
	var cuenta
	var seguidores
	var localidad
	var perfil

	method perfil(){
		return perfil
	}
	
	method perfil(unPerfil){
		perfil = unPerfil
	}
	
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
	method viajar(unViaje) {
		const precio = unViaje.calcularPrecio()
		if (precio <= cuenta) {
			self.viajes().add(unViaje)
			cuenta -= precio
			self.localidad(unViaje.destino())
		}
	}

	method crearViaje(unDestino, unTransporte) {
		return new Viaje(origen = localidad, destino = unDestino, transporte = unTransporte)
	}

//punto 6
	method kilometrosDeUnUsuario() {
		return viajes.sum({ unViaje => unViaje.origen().distanciaHasta(unViaje.destino()) })
	}

//punto 7
	method seguirUsuario(otroUsuario) {
		seguidores.add(otroUsuario)
		otroUsuario.seguidores().add(self)
	}

	method puedePagarTransporteHasta(unTransporte, unDestino){
		const unViaje = self.crearViaje(unDestino, unTransporte)
		return unViaje.calcularPrecio() <= cuenta
	}

}

const pabloHari = new Usuario(nombreDeUsuario = "PHari", viajes = [ unViajeX ], cuenta = 1500, seguidores = #{}, localidad = lastToninas, perfil = empresarial)

