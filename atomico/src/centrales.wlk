import turbinas.*

object burns {

	var cantVarillas

	method cantVarillas(varillas) {
		cantVarillas = varillas
	}

	method calcularEnergia(_, __) {
		return (100000 * cantVarillas)
	}

	method tieneContaminacion() {
		return cantVarillas > 20
	}

}

object exBosque {

	var toneladas

	method toneladas(capacidad) {
		toneladas = capacidad
	}

	method calcularEnergia(riqueza, _) {
		return 500000 + toneladas * riqueza * 1000000
	}

	method tieneContaminacion() {
		return true
	}

}

object elSuspiro {

	var turbinas = #{ unaTurbina }

	method calcularEnergia(_, viento) {
		return turbinas.sum{ turbina => turbina.produccionDeTurbina(viento) }
	}

	method tieneContaminacion() {
		return false
	}

}

object hidroelectrica {
	
	method calcularEnergia(caudal) {
		return caudal * 2000000
	}
}

