object cosas {
    

    method peso() {
      
    }
}
object rider {
  method peso() = 500
  method peligrosidad() = 10
}
object bumblebee {
    var peligro = 15
    
  method peso() = 800
  method peligrosidad() = peligro
  method transformarRobot() {
    peligro = 30
  }method transformarAuto() {
    peligro = 15
  }
}
object ladrillos {
  var ladrillos = 0
  method nuevaCantidadLadrillos(nuevaCant) {
    ladrillos = nuevaCant
  }
  method peso() = ladrillos * 2
  method peligrosidad() = 2 
}
object arena {
    var peso = 0
  method nuevoPeso(nuevoValor){
    peso = nuevoValor
  } 
  method peso() = peso
  method peligrosidad() = 1 
}
object antiaerea {
  var misiles = true

  method hayMisiles() = misiles 
  method sacarMisiles() {
    misiles = false
  }
  method peso() {
    if( self.hayMisiles() ){return 300} else {return 200}
  }
  method peligrosidad() {
    if( self.hayMisiles() ){return 100} else {return 0}
  }
  
}
object contenendor {
  var carga = []
}