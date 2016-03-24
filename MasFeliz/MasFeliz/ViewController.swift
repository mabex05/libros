//
//  ViewController.swift
//  MasFeliz
//
//  Created by Eusebio Millan on 24/03/16.
//  Copyright © 2016 Eusebio Millan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensajePositivo: UILabel! //crea una referencia weak -> deja de crea relacion con el objeto cuando no se usa 
    let colores = Colores() //instancia
    let frases = Datos()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dameUnMensajePositivo() { //ejecuta alguna accion boton
        mensajePositivo.text =  frases.regresaFraseFeliz();
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio //asigna color al view
        view.tintColor = colorAleatorio
    }

}
