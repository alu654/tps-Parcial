class barriales {
	var habitantes
	method cantidad(){
		 habitantes.flapMap({ninio=> ninio.cantidadCaramelos()}).last(3)
	}
	method elmentosNoRepetidos(){
		return self.losElementosMasusados().asSet()
		
	}
	method losElementosMasusados(){
		return self.niniocon10Caramelos().map({nin=> nin.elemtnos()})
	}
	method niniocon10Caramelos(){
		return habitantes.filter{ninio=> ninio.cantidadCaramelos() > 10 }
		
	}
}
