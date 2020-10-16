import localidades.*
import usuarios.*
import mediosDeTransporte.*

object barrilete {

	var localidades = #{ garlicsSea, silversSea, lastToninas, goodAirs }
	var transportes = #{ }

	method localidades() {
		return localidades
	}
	
	method transportes() {
		return transportes
	}
	
//punto 1
	method destinosMasImportantes() {
		return localidades.filter{ localidad => localidad.esDestacado() }
	}

//punto 2
	method aplicarDescuentos(unDescuento) {
		localidades.forEach{ localidad => localidad.aplicarDescuento(unDescuento)}
	}

//punto 3
	method esUnaEmpresaExtrema() {
		return localidades.any{ localidad => localidad.esPeligroso() }
	}

//punto 4
	method cartaDeDestinos() {
		return localidades.map{ localidad => localidad.nombre() }
	}
	
	method algunTransporte(){
		return transportes.anyOne()
	}

}

