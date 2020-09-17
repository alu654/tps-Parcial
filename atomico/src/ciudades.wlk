import centrales.*

object springfield {

	var viento = 10
	var riqueza = 0.9
	var necesidadEnergetica
	var centrales = [ burns, exBosque, elSuspiro ]
	var setDeProducciones
	var aportanMasDel50PorCiento
	var sonContaminantes

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
	method setDeProducciones(){
		setDeProducciones = centrales.map{ central => self.produccionEnergetica(central) }
	}


	method cubreSusNecesidades() {
		return setDeProducciones.sum() > necesidadEnergetica
	}

//punto 4 
// se entiende a "las centrales contaminantes aportan más del 50% de lo necesario" como la 
// condición de que cada una debe cumplir esa condición de manera individual
	method aportanMasDel50PorCiento() {
		return setDeProducciones.all{ produccion => produccion > (0.5 * necesidadEnergetica)}
	}

	method sonContaminantes() {
		return self.centralesContaminantes().size() == centrales.size()
	}
	
	method estaEnElHorno() {
		return self.aportanMasDel50PorCiento() || self.sonContaminantes()
	}

	method centralesOrdenadas() {
		return centrales.sortedBy{ primera , segunda => self.produccionEnergetica(primera) > self.produccionEnergetica(segunda) }
	}

}

object albuquerque {

	var caudal = 150
	var centrales = [ hidroelectrica ]

	method produccionEnergetica(unaCentral) {
		return unaCentral.calcularEnergia(caudal)
	}

	method centrales() {
		return centrales
	}

}

