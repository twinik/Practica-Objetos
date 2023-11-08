class Operacion {
	const property inmueble
	
	method comision()
	
	method reservar(cliente) = inmueble.reservarse(cliente)
	
	method concretarOperacion(cliente) {
		if (self.reservadaPorCliente(cliente) || !inmueble.estaReservada()) {
			self.concretar()
		} else {
			self.error("Ya esta reservada, no se puede realizar la operacion")
		}
	}
	
	method reservadaPorCliente(cliente) {
		return inmueble.estaReservada() && inmueble.reservadaPor() == cliente
	}
	
	method concretar()
}

class Alquiler inherits Operacion {
	const mesesAlquiler
	
	override method comision() {
		return mesesAlquiler * inmueble.valor() / 50000
	}
	
	override method concretar() {
		
	}
}

class Venta inherits Operacion {
	const porcentajeActual
	
	override method comision() {
		return inmueble.valor() * porcentajeActual
	}
	
	override method concretar() {
		
	}
}