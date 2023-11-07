class Expedicion {
	const property vikingos = #{}
	
	method valeLaPena()
}

class InvasionCapital inherits Expedicion {
	
	override method valeLaPena() {
		return self.botin() >= 3 * vikingos.size()
	}
	
	method botin() {
		return vikingos.size()
	}
}

class InvasionAldea inherits Expedicion {
	const cantCrucifijos
	
	override method valeLaPena() {
		return self.saciaSedSaqueos()
	}
	
	method saciaSedSaqueos() {
		return cantCrucifijos >= 15
	}
}

class InvasionAldeaAmurallada inherits InvasionAldea {
	
	method valeLaPena(cantMinima) {
		return self.saciaSedSaqueos() && vikingos.size() > cantMinima
	}
}
