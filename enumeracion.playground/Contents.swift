//: enumeracion valor asocioado a posicion, lista de meses, etc

import UIKit

let ciudades = ["Cancún", "Guadalajara", "DF", "Monterrey"]

enum Ciudad : Int {

    case Cancun = 450
    case Guadalajara = 10
    case DF = 78, Monterrey = 512, Merida
    
}

func obtenerCiudad(ciudad: Ciudad) -> String{
    switch ciudad{
    case .Cancun:
        return "Ciudad de Playa"
    case .Guadalajara, .DF, Ciudad.Monterrey:
        return "Ciudad sin Playa"
    
    default:
        return "opcion invalida"
    }
}

obtenerCiudad(Ciudad.Cancun)


func calcularDistancia(ciudad : Ciudad) -> Int {

    return Ciudad.Cancun.rawValue - ciudad.rawValue //accede al numero que se le declaro - la ciudad que recibe

}

calcularDistancia(Ciudad.Monterrey)


