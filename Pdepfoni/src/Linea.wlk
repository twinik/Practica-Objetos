import Consumo.*

class Linea {
	const property numeroTelefono
	const property packsActivos = []
	const property consumos = []

	method costoPromedio(fechaInicial, fechaFinal) {
		const consumosFiltrados = self.filtrarPorFecha(fechaInicial, fechaFinal)
		return consumosFiltrados.sum{ consumo =>
			consumo.costo()			
		}.div(consumosFiltrados.size())
	}
	
	method filtrarPorFecha(fechaInicial, fechaFinal) {
		return consumos.filter{ consumo =>
			consumo.fechaConsumo.between(fechaInicial, fechaFinal)
		}
	}
	
}