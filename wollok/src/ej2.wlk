object tom {
	var energia = 100
	var velocidad = 0
	
	method comerRaton(raton) {
		energia += (12 + raton.peso())
		velocidad = 5 + energia / 10
	}
	
	method correr(segundos) {
		velocidad = energia
		const metros = segundos * velocidad
		energia -= 0.5 * metros
	}
	
	method meConvieneComerRatonA(unRaton, unaDistancia) {
		return (12 + unRaton.peso()) > (0.5 * unaDistancia)
	}
}

object raton {
	const peso = 10
	
	method peso() {
		return peso
	}
	
}
