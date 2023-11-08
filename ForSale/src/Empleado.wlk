class Empleado {
	const operacionesCerradas = []
	const reservas = []
	
	method reservar(cliente, inmueble) = inmueble.reservarse(cliente)
	
	method concretarOperacion(cliente, inmueble) = inmueble.concretarOperacion(cliente)
	
	method totalComisiones() {
		return operacionesCerradas.sum {operacion => operacion.comision()}
	}
	
	method cantidadOperacionesCerradas() = operacionesCerradas.size()
	
	method cantidadReservas() = reservas.size()
	
	method tieneProblemasCon(otroEmpleado) {
		return self.cerraronOpEnMismaZona(otroEmpleado) && self.concretoOpQueElOtroReservo(otroEmpleado)
	}
	
	method cerraronOpEnMismaZona(otroEmpleado) {
		return self.zonasOperadas().any({zona => otroEmpleado.operoEnZona(zona)})
	}
	
	method zonasOperadas() {
		return operacionesCerradas.map {operacion => operacion.inmueble().zona()}
	}
	
	method operoEnZona(zona) {
		self.zonasOperadas().contains(zona)
	}
	
	method concretoOpQueElOtroReservo(otroEmpleado) {
		return reservas.any({reserva => otroEmpleado.operacionesCerradas().contains(reserva)}) or 
				operacionesCerradas.any({opCerrada => otroEmpleado.reservas().contains(opCerrada)})
	}
	
}
