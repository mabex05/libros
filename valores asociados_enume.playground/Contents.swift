//: Playground - noun: a place where people can play

import UIKit

enum LecturaDeDatos {
    
    case Digitos(Int, Int, Int)
    case QRCodigo(String)
}

var entradaDatos = LecturaDeDatos.Digitos(3, 4, 5)

switch entradaDatos {
case .Digitos(let uno, let dos, let tres):
    print("\(uno) \(dos) \(tres)")
case .QrCodigo(let qr):
    print(qr)
    
    
}