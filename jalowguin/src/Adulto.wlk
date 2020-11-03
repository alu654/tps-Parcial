class adultocomunes{
	var cantidadDeninios
	
	method puedeSerAsustadoPor(unNinio){
		return self.tolerancia() < unNinio.capacidadSusto()
		
	}
	
	method tolerancia()= cantidadDeninios * 10
	method entregaCaramelos()= self.tolerancia() / 2
	
	
	method seAsustoCon(unNinio){
		if(self.puedeSerAsustadoPor(unNinio)){
			unNinio.sumarCaramelos(self.entregaCaramelos())
		}
		else
		{
			unNinio.verificarCantidadDeCaramelos(self)
		}
	}
	
}
class abuelos inherits adultocomunes{
	override method puedeSerAsustadoPor(unNinio) = return true
	
	override method entregaCaramelos(){
		return super()/2
	}
}
class adultosNecios inherits adultocomunes{
	
	override method puedeSerAsustadoPor(unNinio) = return false
}