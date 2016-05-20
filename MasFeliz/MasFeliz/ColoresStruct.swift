//
//  ColoresStruct.swift
//  MasFeliz
//
//  Created by Eusebio Millan on 24/03/16.
//  Copyright © 2016 Eusebio Millan. All rights reserved.
//

import Foundation
import UIKit

struct Colores {
    let colores = [UIColor(red: 210/255.0, green: 90/255.0, blue: 45/255.0, alpha: 1),
                   UIColor(red: 40/255.0, green: 170/255.0, blue: 45/255.0, alpha: 1),
                   UIColor(red: 3/255.0, green: 180/255.0, blue: 90/255.0, alpha: 1),
                   UIColor(red: 210/255.0, green: 190/255.0, blue: 5/255.0, alpha: 1),
                   UIColor(red: 120/255.0, green: 120/255.0, blue: 50/255.0, alpha: 1),
                   UIColor(red: 130/255.0, green: 80/255.0, blue: 90/255.0, alpha: 1),
                   UIColor(red: 130/255.0, green: 130/255.0, blue: 130/255.0, alpha: 1),
                   UIColor(red: 3/255.0, green: 50/255.0, blue: 90/255.0, alpha: 1)]
    
    func regresaColorAleatorio() -> UIColor {
        let posicion = Int ( arc4random()) % colores.count
    
        return colores[posicion]

    }
    
}

struct Datos {
    let frases = ["Somos lo que pensamos. Todo lo que somos surge con nuestros pensamientos. Con nuestros pensamientos construimos el mundo.-Buddha.",
                  "El pesimista ve dificultad en toda oportunidad. El optimista ve oportunidad en toda dificultad.-Winston Churchill.",
                  "No habrá nada que te pueda asustar si te niegas a tener miedo.-Gandhi.",
                  "Solo te puedes cambiar a ti mismo pero a veces eso lo cambia todo.-Gary W Goldstein.",
                  "Despertamos en otros la misma actitud mental que tenemos hacia ellos.-Elbert Hubbard.",
                  "Eres capaz de mucho más de lo que estas pensando, imaginando o haciendo ahora.-Myles Munroe",
                  "¿Cómo voy a vivir hoy de acuerdo al mañana con el que estoy comprometido?-Tony Robbins.",
                  "Un pequeño cambio positivo puede cambiar tu día entero o tu vida entera.-Nishant Grover."]
    
    func regresaFraseFeliz() -> String {
        let posicion = Int( arc4random()) % frases.count
        return frases[posicion]
    }
    

}

