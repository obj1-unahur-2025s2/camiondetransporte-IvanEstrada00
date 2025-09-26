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
        return  cargaTotal.findOrDefault({c => c.peligrosidad() == valor},null)
      /*if( cargaTotal.any({c => c.peligrosidad() == valor}))
      {
        return  cargaTotal.find({c => c.peligrosidad() == valor})
      }
      else 
      {return }
      */
    }
    method cosaEntreValores(valorMin,valorMax) {
      return cargaTotal.any({c=> c.peso()>valorMin && c.peso()<valorMax  })
    }

    method todasCosasConNivelDePeligroMayor(valor) {
      return cargaTotal.filter({c => c.peligrosidad() > valor})
    }

    method todasCosasConNivelDePeligroMayorAPeligroDeCosa(cosa) {
      return cargaTotal.filter({c => c.peligrosidad() > cosa.peligrosidad()})
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