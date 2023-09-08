class Persona {
	var property temperatura
	var property celulas
	const property enfermedades = []
	
	method aumentarTemperatura(grados) {
		if (temperatura + grados <= 45){
			temperatura += grados
		}
	}
	
	method destruirCelulas(celulasAmenazadas) {
		celulas -= celulasAmenazadas
	}
	
	method contraerEnfermedad(unaEnfermedad) {
		enfermedades.add(unaEnfermedad)
	}
	
	method tieneEnfermedad(unaEnfermedad) {
		return enfermedades.contains(unaEnfermedad)
	}
	
	method vivirUnDia() {
		enfermedades.forEach {enfermedad => 
			enfermedad.afectar(self)
		}
	}
	
	method enfermedadMasAfecciosa() {
		return enfermedades.max{enfermedad => 
			enfermedad.celulasAmenazadas()
		}
	}
	
	method estarEnComa() {
		return temperatura == 45 || celulas < 1000000
	}
}