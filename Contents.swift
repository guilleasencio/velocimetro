//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
    var velocidadEnCadena: String{
        switch self {
            
        case .Apagado:
            return "Apagado"
            
        case .VelocidadBaja:
            return "Velocidad Baja"
            
        case .VelocidadMedia:
            return "Velocidad Media"
            
        case .VelocidadAlta:
            return "Velocidad Alta"
            
        }
    }
    
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        
        let velocidadActual = velocidad
        
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            
        }
        
        return (velocidadActual.rawValue, velocidadActual.velocidadEnCadena)
    }
}

// Pruebas

var auto = Auto()

for indice in 1...20{
    var resultado = auto.cambioDeVelocidad()
    print("\(resultado.actual), \(resultado.velocidadEnCadena)")
}
