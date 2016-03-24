//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
    var description : String {
        switch self {
        case .Apagado: return "Apagado";
        case .VelocidadBaja: return "Velocidad Baja";
        case .VelocidadMedia: return "Velocidad Media";
        case .VelocidadAlta: return "Velocidad Alta";
        }
    }
}

class Auto{
    var velocidad: Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        let velActual = self.velocidad
        
        switch(self.velocidad){
        case .Apagado:
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia }
        
        return (velActual.rawValue, velActual.description)
    }
}

let auto: Auto = Auto()
auto.velocidad
for i in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("\(i): Velocidad = ",result.actual, result.velocidadEnCadena)
}