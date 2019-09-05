import remiseras.*

object ludmila {
	method precio(){return 18}
}	
//} 18 pesos el kilómetro, valor fijo e inamovible.

object ana_Maria {
	var situacionEconomica=true

	method economiaOk() {situacionEconomica=true} 
	method economiaMala() {situacionEconomica=false}
	

	method precio(){
		if (situacionEconomica) {return 30}
		else {return 25}
		}
}
//		}**: 30 pesos el kilómetro si está económicamente estable, 25 pesos el kilómetro en caso contrario. Se sabe en cada momento si Ana María está o no económicamente estable.
object teresa {
//	**: arranca en 22 pesos el kilómetro, puede cambiar a cualquier otro valor.
	var valorKilometro=22
	method modificarElPrecio(valor){valorKilometro=valor}
	method precio(){return valorKilometro}	
	
}
object melina {
	
	var trabajaPara=null
	var valor
	method trabajaPara (nombre){ trabajaPara=nombre}
	
	method precio(){
		valor=trabajaPara.precio()-3
		return valor 
  }	
}
  //  Melina es una cadeta que trabaja para los otros clientes de la remisería. 
 //   En cada momento trabaja para un cliente, se debe informar para quién. 
//    El precio por kilómetro pactado con Melina es 3 pesos menos que el precio del cliente para el que esté trabajando en cada momento.

