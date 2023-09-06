object samsungS21 {
	var property bateria = 5
	
	method llamar(_duracion) {
		bateria -= 0.25
	}
	
	method estaApagado() {
		return bateria == 0
	}
	
	method recargar() {
		bateria = 5
	}
}

object iphone {
	var property bateria = 5

	method llamar(duracion) {
		bateria -= (duracion * 0.001)
	}
	
	method estaApagado() {
		return bateria == 0
	}
	
	method recargar() {
		bateria = 5
	}
}