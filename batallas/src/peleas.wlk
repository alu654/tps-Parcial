import Personajes.*
object Equipo1
{
	const equipo1 = #{pamela, toro}
	const equipo2 = #{pocardo, tulipan}
	method pelea(){
		 equipo1.forEach({persona => persona.lucharContra(persona)})
	}
	
	method peleaporEqipo(){
        equipo1.forEach({personaje => personaje.peleaEntreEquipos(equipo1)})
        equipo2.forEach({otropersonaje => otropersonaje.peleaEntreEquipos(equipo2)})
    }


method eergiaTotalDelEquipo(unEquipo){
        return unEquipo.sum({personaje => personaje.getEnergia()})
    }
//este me costo pero creo que si hago con un if y preguntado si las sumatorias es mayor una que otra 
// a demas de poner en Personajes el method
method gritosTotalesDe(){
        self.peleaporEqipo()
        if (self.eergiaTotalDelEquipo(equipo1) > self.eergiaTotalDelEquipo(equipo2)){
            return self.gritosGanadores(equipo1)
        } else if (self.eergiaTotalDelEquipo(equipo1) < self.eergiaTotalDelEquipo(equipo2)){
            return self.gritosGanadores(equipo2)
        } else {
            return "Termina en empate"
        }
    }
    
method gritosGanadores(equipo)
	{
	return equipo.map({integrante => integrante.grito()})
	}
	

}

