//: Playground - noun: a place where people can play

import UIKit

//ex1


let numA = 2
let numB = 10



if numA > numB {

    print("o maior é o \(numA)")
}else{

    print("o maior é o \(numB)")

}


let soma = numB+numA

if soma % 2 == 0 {
    print("a soma (\(soma)) dos numeros é par")
    
}else{
    print("a soma \(soma)) dos numeros é impar")
}


let expo =  (Decimal(numA), numB)

print("\(numA) elevado a \(numB) = \(expo)")


//ex2



let a:Double = 10
let b:Double = 20
let c:Double = 30


let raiz = sqrt(Double(pow(b,2)-(4*a*c)))

if !raiz.isNaN {

    let pos = (-b+raiz)/(2*a)
    let neg = (-b-raiz)/(2*a)
    
    print("a soluçao de \(a)x^2+\(b)x+\(c) = \(pos) ou \(neg) ")
    
}else{

    print("Impossivel")
}



//ex 3


let a3:Double = 10
let b3:Double = 10
let c3:Double = 10



let res = (c3*b3)/a3


print("se \n\(a3)---------\(b3)\n\(c3)--------- X\n\n X= \(res)")



//ex4



let num1 = 10;
let num2 = 31;
var soma2:Int = 0

for a in num1...num2{

soma2+=a

}

print("a soma de todos os inteiros entre \(num1) e \(num2) = \(soma2)")




//ex5


var tabuada = 3


for i in 1..<11{
    
    var res = tabuada * i
    print ("\(tabuada) x \(i) = \(res)");
    
    
    
}



//ex6



let num1ex6 = 2
let num2ex6 = 4
var somaEx6 = 0
for a in num1ex6...num2ex6 where a % 2 == 0{

    somaEx6 += a;




}

print("a soma dos pares entre \(num1ex6) e \(num2ex6) é \(somaEx6)")







//ex7


let arr = [2,3,5,2,42,425,23,134,13,41,0,432]


print("o maior valor do array é \(arr.max()!)")
print("o menor valor do array é \(arr.min()!)")




//ex 8

let arrInt = [2,3,5,2,42,425,23,134,13,41,0,432]
let arrStr = ["da","da","dafa", "dasda", "dadada","dasdadasd"]


func demo (ints: [Int], strs:[String]) ->(ints: Int, strs:String){
    
    let int4 = ints[3]
     let str4 = strs[2]
    
    return (ints: int4, strs:str4)
}


let resEx6 = demo(ints: arrInt, strs: arrStr)

//ex 9 



let num1ex9 = 10;
let num2ex9 = 21
var somaEx9 = 0


for abc in num1ex9...num2ex9 where (abc % 5 == 0) || ( abc % 3 == 0){

somaEx9 += abc

}


print("a soma os multiplos de 3 e 5 entre \(num1ex9) e \(num2ex9) é \(somaEx9)")



//ex10  (Calcular a sequência e de Fibonacci (Fn = Fn-1 + Fn-2) de ordem N)


//deixo para prática


//ex11 Crie um script que permita calcular o factorial (n! = n × (n − 1) × ... × 3 × 2 × 1)

//deixo para prática



//ex12  Crie uma simulação do jogo pedra papel tesoura
 
//deixo para prática
