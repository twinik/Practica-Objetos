class EnfermedadAutoinmune {
	var property celulasAmenazadas
	
	method afectar(unaPersona) {
		unaPersona.destruirCelulas(celulasAmenazadas)
	}
	
	method esAgresiva(unaPersona) {
		return celulasAmenazadas > unaPersona.celulas() * 0.1
	}
}