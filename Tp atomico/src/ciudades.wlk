import centrales.*

object springfield {

	const viento = 10
	const riqueza = 0.9
	var necesidadEnergetica
	var centrales = [ burns, ex_bosque, el_suspiro ]
	var setDeProducciones = centrales.map{ central => self.produccionEnergetica(central) }
	var aportanMasDel50PorCiento
	var noSonContaminantes

//punto 1
	method produccionEnergetica(unaCentral) {
		return unaCentral.calcularEnergia(riqueza, viento)
	}

//punto 2
	method centralesContaminantes() {
		return centrales.filter{ central => central.tieneContaminacion() }
	}

	method necesidadEnergetica(unaNecesidad) {
		necesidadEnergetica = unaNecesidad
	}

//punto 3
	method cubreSusNecesidades() {
		return setDeProducciones.sum() > necesidadEnergetica
	}

//punto 4 
// se entiende a "las centrales contaminantes aportan más del 50% de lo necesario" como la 
// condición de que cada una debe cumplir esa condición de manera individual
	method aportanMasDel50PorCiento() {
		return setDeProducciones.all{ produccion => produccion > (0.5 * necesidadEnergetica)}
	}

	method noSonContaminantes() {
		return self.centralesContaminantes().size() == 0
	}

	method estaEnElHorno() {
		return self.aportanMasDel50PorCiento() || self.noSonContaminantes()
	}

	method centralesOrdenadas() {
		return centrales.sortedBy{ primera , segunda => self.produccionEnergetica(primera) > self.produccionEnergetica(segunda) }
	}

}

object albuquerque {

	const caudal = 150
	var centrales = [ hidroelectrica ]

	method produccionEnergetica(unaCentral) {
		return unaCentral.calcularEnergia(caudal)
	}

	method centrales() {
		return centrales
	}

}

