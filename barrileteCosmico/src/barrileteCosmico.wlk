import destinos.*
import usuarios.*

object barrilete {

	var destinos = #{ garlicsSea, silversSea, lastToninas, goodAirs }

	method destinos() {
		return destinos
	}

//punto 1
	method destinosMasImportantes() {
		return destinos.filter{ destino => destino.esDestacado() }
	}

//punto 2
	method aplicarDescuentos(unDescuento) {
		destinos.forEach{ destino => destino.aplicarDescuento(unDescuento)}
	}

//punto 3
	method esUnaEmpresaExtrema() {
		return destinos.any{ destino => destino.esPeligroso() }
	}

//punto 4
	method cartaDeDestinos() {
		return self.destinos().map{ destino => destino.nombre() }
	}

}

