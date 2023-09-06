import raton.*

object tom {
	var property energia = 100
	var property velocidad = 0
	
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