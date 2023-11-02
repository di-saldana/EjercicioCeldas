//
//  Libro.swift
//  ejercicio_celdas
//
//  Created by Dianelys Saldaña on 11/2/23.
//

import UIKit


class Libro {
    
    let titulo : String
    let autor : String
    let portada : UIImage
    
    init(titulo: String, autor: String, portada: UIImage) {
        self.titulo = titulo
        self.autor = autor
        self.portada = portada
    }
    
}
