//: Estructuras

import UIKit

struct Automovil {
    
    let marca : String //prop o atributos
    var precio : Double
    
    init( marca : String, precio : Double) {  //instancia
        self.marca = marca
        self.precio = precio
        
    }
    func obtenerDescripcion() -> String {
        return "Marca: \(marca)   Precio: \(precio)"
    
    }
    
}

var auto = Automovil(marca: "MarcaAuto", precio: 19800.80)
auto.marca
auto.precio = 9890
auto.precio

auto.obtenerDescripcion()


/*
 
 enumeracion lista con casos, tipos de daos y valores
 estructura inicializador, atributos, funciones, 
 

 */





