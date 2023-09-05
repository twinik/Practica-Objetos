import lugares.*

object pepita {
	var property energia = 100
	var property ubicacion = buenosAires
	
	method volar(kilometros) {
		energia -= (kilometros + 10)
	}
	
	method comer(gramos) {
		energia += (gramos * 4)
	}
	
	method irA(lugar) {
		self.ubicacion(lugar)
		self.volar(lugar.kilometro())
	}
	
	method puedeIr(lugar) {
		return energia >= (lugar.kilometros() + 10)
	}	
}