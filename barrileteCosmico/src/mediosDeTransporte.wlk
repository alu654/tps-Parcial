import turbinas.*

class MedioDeTransporte {

	var tiempoQueTarda
	var costoPorKilometro

	method costoPorKilometro() {
		return costoPorKilometro
	}

	method tiempoQueTarda(){
		return tiempoQueTarda
	}
}

class Avion inherits MedioDeTransporte {

	var turbinas

	override method costoPorKilometro() {
		return turbinas.sum({ unaTurbina => unaTurbina.impulso() })
	}

}

class Micro inherits MedioDeTransporte {

	override method costoPorKilometro() {
		costoPorKilometro = 5000
		return super()
	}

}

class Tren inherits MedioDeTransporte {

	override method costoPorKilometro() {
		return 2300 * 1.60934
	}

}

class Barco inherits MedioDeTransporte {

	var probabilidadDeChoque
	
	override method costoPorKilometro() {
		return probabilidadDeChoque * 1000
	}

}

const unTransporteX = new MedioDeTransporte(tiempoQueTarda = 0, costoPorKilometro = 0)

const avion = new Avion(turbinas = #{unaTurbina}, tiempoQueTarda = 2, costoPorKilometro = 0)

const micro = new Micro(tiempoQueTarda = 8, costoPorKilometro = 0)

const tren = new Tren(tiempoQueTarda = 1, costoPorKilometro = 0)

const barco = new Barco(probabilidadDeChoque = 0.1, tiempoQueTarda = 3, costoPorKilometro = 0 )




