import Consumo.*

class Linea {
	const property numeroTelefono
	const property packsActivos = []
	const property consumos = []

	method costoPromedio(fechaInicial, fechaFinal) {
		const consumosFiltrados = self.filtrarPorFecha(fechaInicial, fechaFinal)
		return consumosFiltrados.sum{consumo => consumo.costo()} / consumosFiltrados.size()
	}
	
	method filtrarPorFecha(fechaInicial, fechaFinal) {
		return consumos.filter{ consumo =>
			consumo.fechaConsumo().between(fechaInicial, fechaFinal)
		}
	}
	
	method costoTotalUltimos30Dias() {
		const hoy = new Date()
		const consumosFiltrados = self.filtrarPorFecha(hoy.minusDays(30), hoy)
		return consumosFiltrados.sum{consumo => consumo.costo()}
	}
	
}