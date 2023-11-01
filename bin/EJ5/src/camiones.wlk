import sillas.*
import televisores.*

object camion {
	const property maxCapacidadEnKg = 20
	
	method puedeLlevar(objeto1, objeto2, objeto3) {
		return maxCapacidadEnKg > objeto1.peso() + 
						objeto1.peso() + 
						objeto1.peso()
	}
}