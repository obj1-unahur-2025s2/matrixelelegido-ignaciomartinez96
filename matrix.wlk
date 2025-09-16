

object neo {

    var energia = 100

    method esElElegido() {return true}
    method saltar() {
        energia = energia / 2
    }
    method vitalidad() {return energia / 10} 

}

object morfeo {

  var vitalidad = 8
  var cansado = false

  method esElElegido() {return false}
  method vitalidad() {return vitalidad}
  method estaCansado() {return cansado} 
  method saltar() {
    vitalidad = (vitalidad - 1).max(0)
    cansado = not cansado
  }
}

object trinity {

    method vitalidad() {return 0}
    method saltar() {
      
    }

    method esElElegido() {return false} 
}


object nave {

    const pasajeros = #{neo, morfeo, trinity}

    method cantidadDePasajeros() = pasajeros.size()

    method pasajeroMayorVitalidad() {return pasajeros.max({p => p.vitalidad()})}
    method pasajeroMenorVitalidad() {return pasajeros.min({p => p.vitalidad()})} 
    method estaEquilibrada() {
        pasajeros.map({p => p.vitalidad() * 2}).all(
            { v => v < self.pasajeroMayorVitalidad().vitalidad()}
        )
        
    } 
   
}













