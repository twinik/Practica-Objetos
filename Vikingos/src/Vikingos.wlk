class Vikingo {
	var property casta
	
	method puedeSubirA(expedicion) = self.esProductivo() && casta.puedeIr(self)
	
	method esProductivo()
	
	method ascender() {
		casta.ascender(self)
	}
	
	method recompensaAscenso()
}

class Soldado inherits Vikingo {
	const vidasCobradas
	var cantArmas
	
	override method esProductivo() = vidasCobradas > 20 && self.tieneArmas()
	
	override method recompensaAscenso() {
		cantArmas += 10
	}
	
	method tieneArmas() = cantArmas > 0
	
}

class Granjero inherits Vikingo {
	var cantHijos
	var cantHectareas
	
	override method esProductivo() = cantHectareas >= (cantHijos * 2)
	
	override method recompensaAscenso() {
		cantHijos += 2
		cantHectareas += 2
	}
	
	method tieneArmas() = false
}

object jarl  {
	
	method puedeIr(vikingo) = vikingo.tieneArmas()
	
	method ascender(vikingo) {
		vikingo.casta(karl)
		vikingo.recompensaAscenso()
	}
}

object karl {
	
	method puedeIr(_vikingo) = true
	
	method ascender(vikingo) = vikingo.casta(thrall)
}

object thrall {
	
	method puedeIr(_vikingo) = true
	
	method ascender(vikingo) {}
		
}