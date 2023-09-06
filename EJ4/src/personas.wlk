import celulares.*
import servicios.*

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