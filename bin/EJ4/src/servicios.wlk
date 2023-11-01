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
		if (minutos <= 10) {
			return costoPorMinutoMenos10Mins * minutos
		} else {
			return costoPorMinutoMenos10Mins * 10 + (minutos - 10) * costoPorMinutoMas10Mins
		}
	}
}