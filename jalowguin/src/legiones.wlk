class legionesDeTerror {
	var integrantes
	
	method cantidadDeCaramelos(){
		integrantes.flatMap({ninio=>ninio.cantidadCaramelos()}).sum()
	}
	method capacidadMayorDeAsustar(unNinio){
		return unNinio.flatmap({ninio=>ninio.capacidadSusto()}).max()
	}
	
	method crearLegion(grupoDeninios){
		if(grupoDeninios.size() > 2 ){
			new legionesDeTerror(integrantes = grupoDeninios) 
			
		}
		
		
	}
}
