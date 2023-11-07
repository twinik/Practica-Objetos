class Pack {
	
	method puedeSatisfacer(consumo) {
		return self.cubre(consumo)
	}
	
	method cubre(consumo)
}

class PackCredito inherits Pack {
	const credito
	
	override method cubre(consumo) {
		
	}
}

class PackMBLibres inherits Pack {
	const mbLibres
	
	override method cubre(consumo) {
		if (mbLibres >= consumo.cantMB()) {
			
		}
	}
}

class PackLlamadasGratis inherits Pack {
	
	override method cubre(consumo) {
		
	}
}

class PackInternetLosFindes inherits Pack {
	
	override method cubre(consumo) {
		
	}
}
