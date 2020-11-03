class ninio {
	var property elementos
	var property cantidadCaramelos
	var actitudNinio
	var property estado 
	
	method sumatoriaSustoElementos(){
		return elementos.sum({elem => elem.capacidadSusto()})
		
	} 
	method capacidadSusto(){
		return self.sumatoriaSustoElementos() * actitudNinio
	}
	method cantidadDeCaramelos(CantidadDeCaramelos){
		cantidadCaramelos += CantidadDeCaramelos
	}
	method intentaAsustar(unAdulto){
		unAdulto.puedeSerAsustadoPor(self)
		}

	method verificarCantidadDeCaramelos(unAdulto){
		if(cantidadCaramelos > 15){
			unAdulto.sumarUnNinio()
		}
	}
	method comeCiertaCantidad(cantidadDeCaramelos){
		if(self.puedeComerTanto(self)){
			cantidadCaramelos -= cantidadDeCaramelos
		}
	}
	method puedeComerTanto(cantidadDeCaramelos){
		return cantidadCaramelos - cantidadDeCaramelos > 0
	}
	method cambioDeEstado(ninio,cantidad){
		if(ninio.comeCiertaCantidad(cantidad) && cantidad > 10){
			 estado = "Empachado"
			 actitudNinio = actitudNinio /2
		}else
		{if((ninio.comeCiertaCantidad(cantidad) && cantidad == 10)){
			estado = "cama"
		}
		}
	}
}
