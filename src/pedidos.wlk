import rodados.*
import trafic.*

class Pedidos {

var property distanciaARecorrer
var property tiempoMaximo
var property cantidadDePasajeros
var property coloresIncompatibles = []

method velocidadRequerida() = distanciaARecorrer/tiempoMaximo
method puedeSatisfacer(auto)= self.satisfaceVelocidad(auto) and self.satisfaceCapacidad(auto)and self.satisfaceColor(auto)
								
method satisfaceVelocidad(auto) =	auto.velMaxima()>= self.velocidadRequerida()+10
method satisfaceCapacidad(auto) = auto.capacidad() >= cantidadDePasajeros
method satisfaceColor(auto)=not coloresIncompatibles.any({c => c == auto.color()})

method relajar() { tiempoMaximo += 1}
}
