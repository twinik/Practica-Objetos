class Consumo {
	const property empresa = pdepfoni
	const property fechaConsumo = new Date()
	
	method costo()
}

class ConsumoInternet inherits Consumo {
	const property cantMB
	
	override method costo() {
		return cantMB * empresa.precioMB
	}
}

class ConsumoLlamada inherits Consumo {
	const property cantSegundos
	
	override method costo() {
		return if (cantSegundos > 30) {
			return empresa.precioFijoLlamada + (cantSegundos - 30) * empresa.precioSegundoLlamada
		} else {
			return empresa.precioFijoLlamada
		}
	}
	
}

object pdepfoni {
	const property precioFijoLlamada = 1
	const property precioMB = 0.10
	const property precioSegundoLlamada = 0.05
}

