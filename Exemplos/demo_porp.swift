//
//  main.swift
//  demo_classes
//
//  Created by Gonçalo Feliciano on 13/11/2019.
//  Copyright © 2019 Gonçalo Feliciano. All rights reserved.
//

import Foundation

//class Quadrado {
//    var lado:Float?
//    var area:Float {
//        set{
//            print("set area")
//            self.lado = sqrt(newValue)
//        }
//        get{
//            print("get area")
//            return pow(self.lado!, 2)
//        }
//    }
//    /// valor do perimetro
//    var perimetro:Float {
//        set{
//            print("set perimetro")
//            self.lado = newValue/4
//        }
//        get{
//            print("get perimetro")
//            return self.lado! * 4
//        }
//    }
//
//
//}
//
//
//var q = Quadrado()
//
//q.lado = 5
//
//print(q.area)
//
//q.area = 1024
//
//print(q.lado!)
//


//// demo static


/*
class Aluno{
    
    var listTestes:[Int]

    private var _testes:Int{
        willSet{
            print("willSet")
            print("  o valor de teste e: \(self._testes) e vai passar para \(newValue)")
            
        }
        didSet{
              print("didSet")
            self.listTestes.append(self._testes)
            print("  o valor de teste era: \(oldValue) e passou a  \(self._testes)")
            
        }
    }
    
    var testes:Int{
     
        set{
            print("set: testes")
            self._testes = newValue
            
        }
        
        get{
            print("get: testes")
            return self._testes
            
        }
        
    }
    
    
    var num:Int
    var media:Float{
        
        didSet{
            if self.media >= 10{
                self.aprovado = true
            }else {
                self.aprovado = false
            }
        }
    }
    
    var aprovado:Bool
    
    init(num:Int) {
        self.num = num
        self.media = 0
        self.aprovado = false
        self._testes = 10
        self.listTestes = []
    }
    
    
    
//    func setMedia(newMedia:Float)  {
//        self.media = newMedia
//        if self.media >= 10 {
//            self.aprovado = true
//
//        }else {
//            self.aprovado = false
//
//        }
//    }
    
    func novaMedia(novaMed:Float){
        self.media = novaMed
    }
}


var a = Aluno(num: 222222)

a.media = 10
print(a.aprovado)

a.novaMedia(novaMed: 8)
print(a.aprovado)



a.testes = 14
a.testes = 15

a.testes = 12
a.testes = 19
 a.testes = 14


print(a.listTestes)
*/
/*
class stDemo{
    var iPorp:Int = 10
    static var stPorp:Int = 40
    
    func teste()  {
        print(stDemo.stPorp)
    }
}

var d = stDemo()

d.iPorp  = 30

print(d.iPorp)

var e = stDemo()

//e.iPorp  = 30
print(e.iPorp)
stDemo.stPorp = 40
e.teste()
d.teste()

*/

class foo{
    var t = 10
    lazy var y = 50
    
}


var fff = foo()

fff.y = 20
print(fff.t)
print(fff.y)
print(fff.t)
