//: Playground - noun: a place where people can play

import UIKit
/* -------clase-----*/
/*
struct Producto {
    
    let marca : String
    var precio : Double
    
    init( marca : String, precio : Double) {
        
        self.marca = marca
        self.precio = precio
    }
    
}

 var telefono = Producto(marca: "Americana", precio: 169.00) //instancia
 telefono.precio //consulta
 
 
*/


class Producto {
    
    let marca : String  //metodos
    var precio : Double = 0.0
    
    init( marca : String, precio : Double) {
        
        self.marca = marca
        self.precio = precio
    }
    func calcularPrecioDeDescuento( porcentajeDeDescuento : Double) -> Double
    {
 
        return precio - (precio * porcentajeDeDescuento / 100)
    
    }
    
}

var miTelefono = Producto(marca: "iPhone 6+", precio: 199.56) //instancia

miTelefono.marca
miTelefono.precio

print (miTelefono.calcularPrecioDeDescuento(30))

miTelefono.precio



/* Herencia */

enum Seccion {
    case Introducción, Indice, Conclusiones
    
    init() {
        self = .Introducción
    }
}

class Libro : Producto {  //hereda las caracteristicas de producto
    var seccion = Seccion()
    let añoDePublicacion : Int
    var contieneFormatoDigital : Bool?
    var paginas = 1000
    var palabrasPorPagina = 60
    
    var numeroDePalabrasDelLibro : Int {
        get {
            return paginas * palabrasPorPagina
        }
        set {
            paginas = newValue
            palabrasPorPagina = newValue / 100
        }
    }
    
    
    init(marca : String, precio : Double, añoDePublicacion : Int){
        self.añoDePublicacion = añoDePublicacion
        super.init(marca: marca , precio: precio)
    }
    
    convenience init(marca:String) { //declara inici solo con atributos deseados en sbclase
        self.init(marca: marca, precio: 0.0, añoDePublicacion: 2001)
    }
    
    override func calcularPrecioDeDescuento( porcentajeDeDescuento : Double) -> Double
    
    {
     return super.calcularPrecioDeDescuento(porcentajeDeDescuento)
    
}
}

var libro = Libro(marca: "MG", precio: 190.50, añoDePublicacion: 1990)
var nuevoLibro = Libro(marca: "BB")
nuevoLibro.precio
nuevoLibro.añoDePublicacion

nuevoLibro.numeroDePalabrasDelLibro

nuevoLibro.numeroDePalabrasDelLibro = 1000

nuevoLibro.numeroDePalabrasDelLibro

nuevoLibro.contieneFormatoDigital = true

if let formatoDigital = nuevoLibro.contieneFormatoDigital {
    if formatoDigital {
            print("Tambien es digital")
    }
}



libro.marca
libro.precio
libro.seccion
libro.calcularPrecioDeDescuento(20)
libro.precio
libro.añoDePublicacion




















