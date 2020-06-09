object trafic
{
	var interiorPuesto = interiorComodo
	var motorPuesto = motorPulenta
	
	
	method setInterior (nuevoInterior){interiorPuesto = nuevoInterior}
	method setMotor(nuevoMotor){motorPuesto = nuevoMotor}
	method capacidad() = interiorPuesto.capacidadDeInterior()
	method velMaxima() = motorPuesto.velMaximaDeMotor()
	method peso () = 4000 + interiorPuesto.pesoDeInterior() + motorPuesto.pesoDeMotor()
	method color() = "blanco"
	
}

object interiorComodo
{
	method pesoDeInterior() = 700
	method capacidadDeInterior() = 5
}

object interiorPopular
{
	method pesoDeInterior() = 1000
	method capacidadDeInterior() = 12
}

object motorPulenta
{
	method pesoDeMotor() = 800
	method velMaximaDeMotor() = 130 
}

object motorBataton
{
	method pesoDeMotor() = 500
	method velMaximaDeMotor() = 80	
}
