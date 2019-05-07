object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}
object paqueteDeLadrillos{
	var property cant=0
	const pesoUnitario=2
	method peso(){return pesoUnitario*cant}
	method nivelPeligrosidad(){return 2}
	
}
object arenaAGranel{
	var property peso=0
	method nivelPeligrosidad(){return 1}
	method bulto(){return 1}
}
object bateriaAntiaerea{
	var property tieneMisiles=true
	method peso(){if(tieneMisiles){return 300}
		else{return 200}
	}
	method nivelPeligrosidad(){if(tieneMisiles){return 100}
		else{return 0}
	}
	
}

object contenedorPortuario{
	const cosasDentro = []
	method cargar(unaCosa) {
		cosasDentro.add(unaCosa)
	}
	method peso(){}
	
	
	
}