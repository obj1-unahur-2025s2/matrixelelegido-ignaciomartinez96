

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










