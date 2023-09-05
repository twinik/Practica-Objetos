object pepita {
	var energia = 100
	var ubicacion = "Caba"
	
	method energia() {
		return energia
	}
	
	method volar(kilometros) {
		energia -= (kilometros + 10)
	}
	
	method comer(gramos) {
		energia += (gramos * 4)
	}
	
	method ubicacion() {
		return ubicacion
	}
	
	method irA(lugar, distancia) {
		ubicacion = lugar
		self.volar(distancia)
	}
	
	method puedeIr(lugar, distancia) {
		return energia >= (distancia + 10)
	}
	
}
