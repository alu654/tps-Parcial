object pamela{
	const profesion = "doctora"
	var objetos = ["algodon", "agua_oxigenada" , "cintas_de_papel","cintas_de_papel"]
	var energiaInicial = 60000
	const grito = "Acá pasó la Pamela" 
	
	method manoAmano()= energiaInicial * 4000
	method obtenerEnergia() = energiaInicial
	method objetos() = objetos
	
	method tamanodeObjetos()= {
		return objetos.size()
	}
	method agarrarUltimo(){
	objetos.last()
	}
	method grito(){
		return grito
	}
	method eliminarObjeto(enemigo)
    {
    	enemigo.objetos().remove(enemigo.objetos().last())
    }
	
	
}

object pocardo {
	const profesion = "musicoterapeuta"
	const grito = "¡Siente el poder de la música!"
	var objetos = [ "guitarra",  "curitas", "cotonetes"]
	var energiaInicial = 5600
	
	
	method obtenerEnergia() = energiaInicial
	method tamanodeObjetos()=
	 {
		return objetos.size()
	 }
	method agarrarUltimo(){
	 return objetos.last()
	}
	method objetos() = objetos
	method grito(){
		return grito
	}
	method eliminarObjeto(enemigo)
    {
    	enemigo.objetos().remove(enemigo.objetos().last())
    }
    method peleaEntreEquipos(equipo) {
        equipo.forEach({personaje => self.lucharManoAMano(personaje)})
    }
    method lucharManoAMano(personaje) {
    	energiaInicial = energiaInicial + 500
    }
	
}

object tulipan{
	const profesion = "La guerrera"
	var energiaInicial = 8400
	const grito = "Hora de cuidar a las plantas"
	var objetos = ["astrillo", "macetas", "macetas", "manguera"]
	
	method lucharManoAMano(enemigo){
        enemigo.sacarEnergia(enemigo.obtenerEnergia() * 0.5)
        }
        
	
	method obtenerEnergia() = energiaInicial
	method objetos() = objetos
	
	method sacarEnergia(energia){
        energiaInicial = energiaInicial - energia
    }
    method grito()= {
    	return grito 
    }
    method tamanodeObjetos()= 
    {
		return objetos.size()
	}
	
	method agarrarUltimo(){
		objetos.last()
		
	}
	method eliminarObjeto(enemigo)
    {
    	enemigo.objetos().remove(enemigo.objetos().last())
    }
    method peleaEntreEquipos(equipo) {
        equipo.forEach({personaje => self.lucharManoAMano(personaje)})
    }
}


object toro{
	const grito =  "No se metan con el toro"
	var objetos= []
	var energiaInicial = 7800
	
	
	method tamanodeObjetos()= 
	{
		return objetos.size()
	}

	method agarrarUltimo(){
		return objetos.last()
		
	}
	method AgregarAObjetos(enemigo)
	{
		 objetos.add(enemigo.agarrarUltimo())
	}
	
	method lucharManoAMano(enemigo)
	{
        enemigo.quitarEnergia(200 * enemigo.getCantidadDeObjetos())
        self.AgregarAObjetos(enemigo.getObjetos().agarrarUltimo())
        enemigo.eliminarObjeto(enemigo.objetos().last())
    }
    method sacarEnergia(energia)
    {
        energiaInicial = energiaInicial - energia
    }
    method objetos() = objetos
    method eliminarObjeto(enemigo)
    {
    	enemigo.objetos().remove(enemigo.objetos().last())
    }
    method grito(){
		return grito
	}
	method peleaEntreEquipos(equipo) {
        equipo.forEach({personaje => self.lucharManoAMano(personaje)})
    }
	
}
	
