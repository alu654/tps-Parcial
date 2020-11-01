import barrileteCosmico.*

object empresarial {

	method determinarTransporte(unUsuario, unDestino) {
		return barrilete.determinarTransporteEmpresarial()
	}

}

object estudiantil {

	method determinarTransporte(unUsuario, unDestino) {
		return barrilete.determinarTransporteEstudiantil(unUsuario, unDestino)
	}

}

object familiar {

	method determinarTransporte(unUsuario, unDestino) {
		return barrilete.determinarTransporteFamiliar()
	}

}

