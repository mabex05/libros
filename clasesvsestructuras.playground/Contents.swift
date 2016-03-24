//: Playground - noun: a place where people can play

import UIKit
class ProductoClass {

    var marca : String
    var precio : Double = 0.0
    
    init( marca : String, precio : Double) {
        self.marca = marca
        self.precio = precio

    }
    
    func calcularPrecioDeDescuento( porcentajeDeDescuento : Double) -> Double {
        return precio - (precio * porcentajeDeDescuento / 100 )
    }

    
}

var telefonoBasico = ProductoClass(marca: "iphone", precio: 150.00)
var telefonoTe = telefonoBasico

telefonoBasico.marca
telefonoTe.marca = "iPhone 6"
telefonoBasico.marca

struct ProductoStruct {
    
    var marca : String
    var precio : Double = 0.0
    
    init( marca : String, precio : Double) {
        self.marca = marca
        self.precio = precio
        
    }

    func calcularPrecioDeDescuento (porcentajeDeDescuento : Double) -> Double {
        return precio - (precio * porcentajeDeDescuento / 100)
    }

}

var telefonoStruct = ProductoStruct(marca: "Sam", precio: 50)
var telefonoPequeño = telefonoStruct

telefonoPequeño.marca = "New"
telefonoPequeño.marca
telefonoStruct.marca






