object camion {
    var cargaTotal  = []
    const pesoCamion = 1000 

    method aumentarCarga(cosa) {
        cargaTotal.add(cosa)
    }   
    method pesoDeCosasSonPares() {
       return cargaTotal.all({c => c.peso().even()}) 
    }
    method cosaConPesoExacto(valor) {
      return cargaTotal.any({c => c.peso() == valor })
    }

    method primeraCosaConNivelDePeligro(valor) {
      return cargaTotal.find({c => c.peligro() == valor})
    }

    method todasCosasConNivelDePeligroMayor(valor) {
      return cargaTotal.filter({c => c.peligro() > valor})
    }

    method todasCosasConNivelDePeligroMayorAPeligroDeCosa(cosa) {
      return cargaTotal.filter({c => c.peligro() > cosa.peligro()})
    }

    method pesoTotalCarga() {
      return cargaTotal.sum({c => c.peso()}) 
    }
    method pesoTotal() {
      return self.pesoTotalCarga() + pesoCamion
    }

    method puedeCircularRuta(pesoMaximo,peligrosidadMaxima) {
      return  self.todasCosasConNivelDePeligroMayor(peligrosidadMaxima).size() == 0 && self.pesoTotal() < pesoMaximo 
    }

}