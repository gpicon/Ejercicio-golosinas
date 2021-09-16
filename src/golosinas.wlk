object bombon {

	var peso = 15

	method precio() {
		return 5
	}

	method peso() {
		return peso
	}

	method mordisco() {
		peso = peso * 0.8 - 1
	}

	method gusto() {
		return "frutilla"
	}

	method libreGluten() {
		return true
	}

}

object alfajor {

	var peso = 300

	method precio() {
		return 12
	}

	method peso() {
		return peso
	}

	method gusto() {
		return "chocolate"
	}

	method libreGluten() {
		return false
	}

	method mordisco() {
		peso = peso * 0.8
	}

}

object caramelo {

	var peso = 5

	method precio() {
		return 1
	}

	method peso() {
		return peso
	}

	method gusto() {
		return "frutilla"
	}

	method libreGluten() {
		return true
	}

	method mordisco() {
		peso -= 1
	}

}

object chupetin {

	var peso = 7

	method precio() {
		return 2
	}

	method peso() {
		return peso
	}

	method gusto() {
		return "naranja"
	}

	method libreGluten() {
		return true
	}

	method mordisco() {
		if (peso >= 2) {
			peso = peso * 0.9
		}
	}

}

object oblea {

	var peso = 250

	method precio() {
		return 5
	}

	method peso() {
		return peso
	}

	method gusto() {
		return "vainilla"
	}

	method libreGluten() {
		return false
	}

	method mordisco() {
		if (peso > 70) {
			peso = peso * 0.5
		} else {
			peso = peso * 0.75
		}
	}

}

object chocolatin {

	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual

	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) {
		pesoInicial = cuanto
		pesoActual = cuanto
	}

	method precio() {
		return pesoInicial * 0.5
	}

	method peso() {
		return pesoActual
	}

	method gusto() {
		return "chocolate"
	}

	method libreGluten() {
		return false
	}

	method mordisco() {
		pesoActual = pesoInicial - 2
	}

}

object golosinaBaniada {

	var golosinaInterior
	var pesoBanio = 4
	var peso = golosinaInterior.peso() + pesoBanio

	method baniaA(unaGolosina) {
		golosinaInterior = unaGolosina
	}

	method precio() {
		return golosinaInterior.precio() + 2
	}

	method peso() {
		return peso
	}

	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) {
			pesoBanio -= 2
		}
	// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}

	method gusto() {
		return golosinaInterior.gusto()
	}

	method libreGluten() {
		golosinaInterior.libreGluten()
	}

}

object tuttifrutti {

	var sabor
	var esLibreDeGluten
	const gustos = [ "frutilla", "chocolate", "naranja" ]
	var gustoIndice = 0

	method precio() = if (self.libreGluten()) {
		7
	} else {
		10
	}

	method peso() {
		return 5
	}

	method setLibreGluten(valor) {
		esLibreDeGluten = valor
	}

	method libreGluten() {
		return esLibreDeGluten
	}

	method mordisco() {
		gustoIndice += 1
	}

	method gusto() {
		return gustos.get(gustoIndice % 3)
	}

	method mordisco_B() {
		gustoIndice += 1
		if (gustoIndice == 3) {
			gustoIndice = 0
		}
	}

	method gusto_B() {
		return gustos.get(gustoIndice)
	}

}

