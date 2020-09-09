import turbinas.*

object burns {

	var cantVarillas

	method cantVarillas(varillas) {
		cantVarillas = varillas
	}

	method calcularEnergia(riqueza, viento) {
		return (100000 * cantVarillas)
	}

	method tieneContaminacion() {
		return cantVarillas > 20
	}

}

object ex_bosque {

	var toneladas

	method toneladas(capacidad) {
		toneladas = capacidad
	}

	method calcularEnergia(riqueza, viento) {
		return 500000 + toneladas * riqueza * 1000000
	}

	method tieneContaminacion() {
		return true
	}

}

object el_suspiro {

	var turbinas = #{ unaTurbina }

	method calcularEnergia(riqueza, viento) {
		return turbinas.map{ turbina => turbina.produccionDeTurbina(viento) }.sum()
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

