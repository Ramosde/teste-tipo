//: Playground - noun: a place where people can play

import UIKit


//1
class veiculo{

    var tipo:String;
    var marca:String
    var modelo:String
    
    init(marca:String, modelo:String, tipo:String) {
        self.marca = marca
        self.modelo = modelo
        self.tipo = tipo
    }
}

class carro:veiculo{
    
    var vVMax:Int
    var acelaracao:Int
    
    init(marca: String, modelo: String, vMax:Int, acelaracao:Int ) {
        self.vVMax = vMax
        self.acelaracao = acelaracao
        super.init(marca: modelo, modelo: modelo, tipo: "carro")

    }
}


//2

class pessoa{

    var nome:String
    var idade:Int
    
    init(nome:String, idade:Int) {
        self.nome = nome
        self.idade = idade
    }
    
}

class cliente:pessoa{

    var nif:Int
    var email:String
    
    init(nome: String, idade: Int, nif:Int, email:String) {
        self.nif = nif
        self.email = email
        super.init(nome: nome, idade: idade)
    }
}

//3

class vendedor:pessoa{
    
    var ordenado:Int
    var email:String
    
    init(nome: String, idade: Int, ordenado:Int, email:String) {
        self.ordenado = ordenado
        self.email = email
        super.init(nome: nome, idade: idade)
    }
}



//4 


//deixo como exercicio 