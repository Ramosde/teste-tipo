//
//  Aluno.swift
//  demoClasses
//
//  Created by Gonçalo Feliciano on 15/11/2019.
//  Copyright © 2019 Gonçalo Feliciano. All rights reserved.
//

import Foundation


class Aluno: Pessoa {
    var media:Float
    private var _notas:[Float]{
        willSet{
            print("var: \(self._notas)")
               print("willSet: \(newValue)")
        }
        didSet{
            self.media = self._notas.avg()
        }
    }
    
    var ultiamNota:Float{
        
        set{
            if newValue > 20{
                //lançar um erro
                print("nota Invalida: \(newValue)")
            }else{
                self._notas.append(newValue)
            }
        }
       
        get{
            return self._notas.last!
            
        }
        
    }

    
    
    override init(nome:String, idade:UInt16) {
        self.media = 0
        self._notas = []
    
        super.init(nome: nome, idade: idade)
    }
    
    

}


extension Array{
    func avg() -> Float {

        var total:Float = 0
        
        for a in self{
            
            //Martelado
            total += a as! Float
        }
        return (total/Float(self.count))
    }
}


