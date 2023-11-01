class EnfermedadInfecciosa {
	var property celulasAmenazadas
	
	method afectar(unaPersona) {
		const grados = celulasAmenazadas * 0.001
		unaPersona.aumentarTemperatura(grados)
	}
	
	method reproducirse() {
		celulasAmenazadas *= 2
	}
	
	method esAgresiva(unaPersona) {
		return celulasAmenazadas > unaPersona.celulas() * 0.1
	}
}