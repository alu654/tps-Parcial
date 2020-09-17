import destinos.*
import usuarios.*

object barrilete {

	var destinos = #{ garlicsSea, silversSea, lastToninas, goodAirs }

	method destinos() {
		return destinos
	}

//punto 1
	method destinosMasImportantes() {
		return destinos.filter{ destino => destino.precio() > 2000 }
	}

//punto 2
	method aplicarDescuentos(unDescuento) {
		destinos.forEach{ destino => destino.precio(destino.precio() * (1 - unDescuento))}
		destinos.forEach{ destino => destino.equipaje().add("Certificado de descuento")}
	}

//punto 3
	method esUnaEmpresaExtrema() {
		return self.tieneUnDestinoPeligroso()
	}

	method tieneUnDestinoPeligroso() {
		return destinos.any{ destino => destino.esPeligroso() }
	}

//punto 4
	method cartaDeDestinos() {
		return self.destinos().map{ destino => destino.nombre() }
	}

//punto 5
	method volarAUnDestino(unUsuario, unDestino) {
		if (unDestino.precio() <= unUsuario.cuenta()) {
			unUsuario.destinos().add(unDestino)
			unUsuario.cuenta(unUsuario.cuenta() - unDestino.precio())
		}
	}

//punto 6
	method kilometrosDeUnUsuario(unUsuario) {
		return 0.1 * (unUsuario.destinos().sum{ destino => destino.precio() })
	}

//punto 7
	method seguirUsuario(unUsuario, otroUsuario) {
		unUsuario.seguidores().add(otroUsuario)
		otroUsuario.seguidores().add(unUsuario)
	}

}

