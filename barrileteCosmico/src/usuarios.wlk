import localidades.*
import barrileteCosmico.*

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
	method viajarHacia(localidadDestino) {
		const precioKM = barrilete.algunTransporte().costoPorKilometro()
		const precioDeViaje = (self.localidad().distanciaHasta(localidadDestino)) * precioKM
		const precioTotal = localidadDestino.precio() + precioDeViaje
		if (precioTotal <= cuenta) {
			viajes.add(localidadDestino)
			self.cuenta(cuenta - precioTotal)
			self.localidad(localidadDestino)
		}
	}

//punto 6
	method kilometrosDeUnUsuario() {
		return viajes.map{ unaLocalidad => unaLocalidad.distanciaHasta(localidad) }.sum()
	}

//punto 7
	method seguirUsuario(otroUsuario) {
		seguidores.add(otroUsuario)
		otroUsuario.seguidores().add(self)
	}

}

const pabloHari = new Usuario(nombreDeUsuario = "PHari", viajes = #{ lastToninas, goodAirs }, cuenta = 1500, seguidores = #{}, localidad = lastToninas)

