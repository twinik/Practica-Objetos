import lugares.*
import entrenadores.*

object pepita {
	var property energia = 40
	var property ubicacion = buenosAires
	var property entrenador = susana
	
	method volar(kilometros) {
		energia -= (kilometros + 10)
	}
	
	method comer(gramos) {
		energia += (gramos * 4)
	}
	
	method irA(lugar) {
		if (self.puedeIr(lugar)){
			self.ubicacion(lugar)
			self.volar(lugar.kilometros())
		}
	}
	
	method puedeIr(lugar) {
		return energia >= (lugar.kilometros() + 10)
	}	
	
	method estado() {
		if (energia < 50) {return "debil"}
		if (energia > 500 && energia.even()) {return "debil"}
		return ""
	}
	
	method cumplirDeseo() {
		if(self.estado() == "euforica") {self.volar(5)}
		if (self.estado() == "debil") {self.comer(500)}
	}
	
	method entrenate() {
		entrenador.rutina(self)
	}
}

object pepon {
	var property energia = 40
	var property entrenador = roque
	
	method volar(kilometros) {
		energia -= (kilometros * 2)
	}
	
	method comer(gramos) {
		energia += (gramos * 3 - 20)
	}
	
	method cumplirDeseo() {
		self.comer(100)
	}
	
	method entrenate() {
		entrenador.rutina(self)
	}
}

object luciana {
	var property energia = 40
	var property ubicacion = buenosAires
	var property entrenador = susana
	
	method volar(kilometros) {
		energia -= (kilometros + 10)
	}
	
	method comer(gramos) {
		energia += (gramos * 4)
	}
	
	method irA(lugar) {
		if (self.puedeIr(lugar)){
			self.ubicacion(lugar)
			self.volar(lugar.kilometros())
		}
	}
	
	method puedeIr(lugar) {
		return energia >= (lugar.kilometros() + 10)
	}	
	
	method estado() {
		if (energia < 50) {return "debil"}
		if (energia > 500 && energia.even()) {return "debil"}
		return ""
	}
	
	method cumplirDeseo() {
		if(self.estado() == "euforica") {self.volar(5)}
		if (self.estado() == "debil") {self.comer(500)}
	}
	
	method entrenate() {
		entrenador.rutina(self)
	}
}

object ernestina {
	var property energia = 40
	var property ubicacion = buenosAires
	var property entrenador = susana
	
	method volar(kilometros) {
		energia -= (kilometros + 10)
	}
	
	method comer(gramos) {
		energia += (gramos * 4)
	}
	
	method irA(lugar) {
		if (self.puedeIr(lugar)){
			self.ubicacion(lugar)
			self.volar(lugar.kilometros())
		}
	}
	
	method puedeIr(lugar) {
		return energia >= (lugar.kilometros() + 10)
	}	
	
	method estado() {
		if (energia < 50) {return "debil"}
		if (energia > 500 && energia.even()) {return "debil"}
		return ""
	}
	
	method cumplirDeseo() {
		if(self.estado() == "euforica") {self.volar(5)}
		if (self.estado() == "debil") {self.comer(500)}
	}
	
	method entrenate() {
		entrenador.rutina(self)
	}
}