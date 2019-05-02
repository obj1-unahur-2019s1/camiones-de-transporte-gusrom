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
	var cant
	method cantidad(num){cant=num}
	method peso(){return 2*cant}
	method nivelPeligrosidad(){return 2}
	
}
object arenaAGranel{
	var peso
	method peso(num){peso=num}
	method nivelPeligrosidad(){return 1}
}
object bateriaAntiaerea{
	var tieneMisiles=true
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