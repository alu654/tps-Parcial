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

}

