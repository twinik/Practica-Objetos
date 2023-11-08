class Inmueble {
	const property tamanioEnM2
	const property ambientes
	const property operacion
	const property zona
	var property estaReservada
	var property reservadaPor
	
	method valor() {
		return zona.plusAdicional() + self.valorIndependiente()
	}
	
	method valorIndependiente()
	
	method reservarse(cliente) {
		estaReservada = true
		reservadaPor = cliente
	}

}

class Casa inherits Inmueble {
	const valorParticular
	
	override method valorIndependiente() {
		return valorParticular
	}
}

class Ph inherits Inmueble {
	
	override method valorIndependiente() {
		return 500000 + 14000 * tamanioEnM2
	}
}

class Departamento inherits Inmueble {
	
	override method valorIndependiente() {
		return 350000 * ambientes
	}
}

class Zona {
	const property plusAdicional
}
