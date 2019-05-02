import cosas.*

object camion {
	const property cosas = []
	
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	method descargar(unaCosa){
		cosas.remove(unaCosa)
	}
	method pesoTotal(){
		return cosas.sum({cosa=>cosa.peso()})+1000
	}
	method excedidoDePeso(){
		return self.pesoTotal()>2500
	}
	method objetosPeligrosos(nivel){
		return cosas.filter({cosa=>cosa.nivelPeligrosidad()>nivel})
	}
	method objetosMasPeligrososQue(cosaX){
		return cosas.filter({cosa=>cosa.nivelPeligrosidad()>cosaX.nivelPeligrosidad()})
	}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return cosas.all({cosa=>cosa.nivelPeligrosidad()<nivelMaximoPeligrosidad})
	}
	method tieneAlgoQuePesaEntre(min, max){
		return cosas.any({cosa=>cosa.peso().between(min,max)})
	}
	method cosaMasPesada(){
		return cosas.max({cosas})
	}
}
