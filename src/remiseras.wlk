/*
 * definir remiseras y clientes.
 */

import clientes.*

//A partir de estos valores, cada remisera tiene un margen de decisión sobre cuánto cobrar un viaje. En particular:
//- **Roxana** le cobra a cada cliente el precio por kilómetro que pactó con la cooperativa sin variaciones.	
object roxana {
	
	method precioViaje(cliente,km){return cliente.precio()*km}
	
}
object gabriela{
	var valor
	
	
	method precioViaje(cliente,km){
		valor=(cliente.precio()*km)*1.2
		return valor 
	}
	
	
}

//- **Gabriela** le aumenta un 20%, porque su auto de alta gama.

object mariela{
	var valorKilometro

	method precioViaje(cliente,km){ 	
	
		var costoDelViaje=0
		
		costoDelViaje=cliente.precio()*km
		
		if (costoDelViaje<50){ costoDelViaje=50}
		

	return costoDelViaje
	
	}
}

// **Mariela** no aplica recargo, pero establece un mínimo de 50 pesos el viaje.

object juana{
	method precioViaje(cliente,km){ 
		if (km>8){return 100}
		else {return 200}
		
	}
	
}
//- **Juana** por su parte, cobra 100 pesos hasta 8 kilómetros, y 200 pesos si son más de 8 kilómetros. A Juana no le importa lo que pactó la agencia, le cobra lo mismo a todos.

object lucia {
	var reemplazaA=null
	var valor
	method reemplazaA (nombre){ reemplazaA=nombre}
	
	method precioViaje(cliente,km){
		valor=reemplazaA.precioViaje(cliente,km)
		return valor 
		
	}
//Lucía es una remisera que hace reemplazos, o sea, cubre los turnos que las otras remiseras se tienen que tomar por alguna razón. Hay que informar a quién está reeemplazando Lucía. Lucía cobra lo mismo que la remisera al que está reemplazando.
}