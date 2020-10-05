import destinos.*

object pabloHari {

	var nombreDeUsuario = "PHari"
	var destinos = #{ lastToninas, goodAirs }
	var cuenta = 1500
	var seguidores = #{}

	method destinos() {
		return destinos
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
	method volarAUnDestino(unDestino) {
		if (unDestino.precio() <= cuenta) {
			destinos.add(unDestino)
			self.cuenta(cuenta - unDestino.precio())
		}
	}

//punto 6
	method kilometrosDeUnUsuario() {
		return 0.1 * (destinos.sum{ destino => destino.precio() })
	}

//punto 7
	method seguirUsuario(otroUsuario) {
		seguidores.add(otroUsuario)
		otroUsuario.seguidores().add(self)
	}

}

