object pepe {
	const categoria = "Gerente"
	const diasFaltados = 10
	var sueldo = 0
	
	method neto() {
		return if (categoria == "Gerente") 1000 else 1500
	}
	
	method bonoPresentismo() {
		var bono = 0
		if (diasFaltados == 0) {
			bono = 100
		} else if (diasFaltados == 1) {
			bono = 50
		}
		return bono
	}
	
	method bonoResultados() {
		return 80
	}
	
	method sueldo() {
		sueldo = self.neto() + self.bonoPresentismo() + self.bonoResultados()
		return sueldo
	}
	
}
