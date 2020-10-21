class Viaje {
	var origen
	var destino
	var transporte
	
	method origen(){
		return origen
	}
	
	method destino(){
		return destino
	}
	
	method calcularPrecio() {
		const precioKM = transporte.costoPorKilometro()
		const precioDeViaje = (origen.distanciaHasta(destino)) * precioKM
		return destino.precio() + precioDeViaje
	}	
	
}

