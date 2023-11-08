class Operacion {
	const property empleado
	const property inmueble
	
	method comision()
}

class Alquiler inherits Operacion {
	const mesesAlquiler
	
	override method comision() {
		return mesesAlquiler * inmueble.valor() / 50000
	}
}

class Venta inherits Operacion {
	const porcentajeActual
	
	override method comision() {
		return inmueble.valor() * porcentajeActual
	}
}