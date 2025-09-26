object camion {
    var cargaTotal  = []
    const pesoCamion = 1000 

    method aumentarCarga(cosa) {
        cargaTotal.add(cosa)
    }
    method pesoDeCosasSonPares() {
        cargaTotal.all({c => c.peso().even()}) 
    }
    method cosaConPesoExacto(valor) {
      cargaTotal.any({c => c.peso() == valor })
    }

}