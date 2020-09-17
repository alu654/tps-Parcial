import ciudades.*
import centrales.*

object region {

	const ciudades = #{ springfield, albuquerque }
//punto 5
	const centralDeSpringfield = springfield.centralesOrdenadas().first()
	const centralDeAlbuquerque = albuquerque.centrales().first()

	method centralesMasProductoras() {
		return #{ centralDeAlbuquerque, centralDeSpringfield }
	}

}

