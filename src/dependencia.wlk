import rodados.*
import pedidos.*
import trafic.*
class Dependencia
{
		const property rodados = []
		const property registroDePedidos = []
		var cantidadDeEmpleados = 0
		method agregarPedido(pedido)= registroDePedidos.add(pedido)
		method quitarPedido(pedido)= registroDePedidos.remove(pedido)
		method cantidadDeEmpleados() = cantidadDeEmpleados 
		method setCantidadDeEmpleados(nuevoNumero){cantidadDeEmpleados = nuevoNumero}
		method agregarFlota(rodado) = rodados.add(rodado)
		method quitarDeFlota(rodado)= rodados.remove(rodado)
		method pesoTotalFlota()= rodados.sum({r => r.peso()})
		method estaBienEquipada() = rodados.size()>= 3 and rodados.all({r => r.velMaxima()>= 100})
		method capacidadTotalEnColor(color)= rodados.filter({r => r.color() == color}).sum({r => r.capacidad()})
		method colorDelRodadoMasRapido()= rodados.max({r => r.velMaxima()}).color()
		method capacidadFaltante()
		{
			const resta = cantidadDeEmpleados - rodados.sum({r => r.capacidad()})
			return resta.max(0)
				
		}
		method esGrande() = cantidadDeEmpleados >= 40 and rodados.size() >= 5
		method totalDePasajerosEnPedidos() = registroDePedidos.sum({p => p.cantidadDePasajeros()})
		method pedidosQueNoPuedenSatisfacerse() {}
		
	    method esColorIncompatible(color)= registroDePedidos.all({p => p.coloresIncompatibles().contains(color)})
			  
}
