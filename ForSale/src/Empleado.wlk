class Empleado {
	const property operacionesCerradas = []
	const property reservas = []
	
	method reservar(cliente, inmueble) = inmueble.reservarse(cliente)
	
	method concretarOperacion(cliente, inmueble) = inmueble.concretarOperacion(cliente)
	
	method tieneProblemasCon(otroEmpleado) {
		return self.cerraronOpEnMismaZona(otroEmpleado) && self.concretoOpQueElOtroReservo(otroEmpleado)
	}
	
	method cerraronOpEnMismaZona(otroEmpleado) = self.zonasOperadas().any({zona => otroEmpleado.operoEnZona(zona)})
	
	
	method zonasOperadas() = operacionesCerradas.map {operacion => operacion.inmueble().zona()}
	
	
	method operoEnZona(zona) = self.zonasOperadas().contains(zona)
	
	
	method concretoOpQueElOtroReservo(otroEmpleado) {
		return reservas.any({reserva => otroEmpleado.operacionesCerradas().contains(reserva)}) or 
				operacionesCerradas.any({opCerrada => otroEmpleado.reservas().contains(opCerrada)})
	}
	
	method reservarPara(operacion, cliente) {
		operacion.reservar(cliente)
		reservas.add(operacion)
	}
	
	method comprar(operacion, cliente) {
		operacion.concretarOperacion(cliente)
		operacionesCerradas.add(operacion)
	}
	
}

object inmobiliaria {
	const empleados = []
	
	method mejorEmpleadoSegun(criterio) = empleados.max {empleado => criterio.criterio(empleado)}
}

object totalComisiones {
	method criterio(empleado) = empleado.operacionesCerradas().sum {operacion => operacion.comision()}
}

object opCerradas {
	method criterio(empleado) = empleado.operacionesCerradas().size()
}

object reservas {
	method criterio(empleado) = empleado.reservas().size()	
}

