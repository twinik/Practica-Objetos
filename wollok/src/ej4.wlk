object juliana {
	const celular = samsungS21
	const compania = personal
	
	method celularApagado() {
		return celular.estaApagado()
	}
	
	method llamar(duracion) {
		celular.llamar(duracion)
		return compania.costoLlamada(duracion)
	}
}

object catalina {
	const celular = iphone
	const compania = movistar
	
	method celularApagado() {
		return celular.estaApagado()
	}
	
	method llamar(duracion) {
		celular.llamar(duracion)
		return compania.costoLlamada(duracion)
	}
}


object samsungS21 {
	var bateria = 5
	
	method bateria() {
		return bateria
	}
	
	method llamar() {
		bateria -= 0.25
	}
	
	method estaApagado() {
		return bateria == 0
	}
	
	method recargar() {
		bateria = 5
	}
}

object iphone {
	var bateria = 5
	
	method bateria() {
		return bateria
	}
	
	method llamar(duracion) {
		bateria -= (duracion * 0.001)
	}
	
	method estaApagado() {
		return bateria == 0
	}
	
	method recargar() {
		bateria = 5
	}
}

object movistar {
	const costoPorMinuto = 60
	
	method costoLlamada(minutos) {
		return costoPorMinuto * minutos
	}
}

object claro {
	const costoPorMinuto = 50
	
	method costoLlamada(minutos) {
		return (costoPorMinuto + (0.21 * costoPorMinuto)) * minutos
	}
}

object personal {
	const costoPorMinutoMenos10Mins = 70
	const costoPorMinutoMas10Mins = 40
	
	method costoLlamada(minutos) {
		var costo = 0
		if (minutos <= 10) {
			costo = costoPorMinutoMenos10Mins * minutos
		} else {
			costo = costoPorMinutoMenos10Mins * 10 + (minutos - 10) * costoPorMinutoMas10Mins
		}
		
		return costo
	}
}