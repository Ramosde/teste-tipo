import UIKit

//arrays

var arr = ["Picanha", "Alcatra", "Lombo", "Batata Frita", "Arroz"]


arr[0]

for a in arr{
    print(a)
}


arr.append("Feijão")
print("---------")

for a in arr{
    print(a)
}


arr.remove(at: 3)
print("---------")

for a in arr{
    print(a)
}



print("---------")
arr.insert("Maminha", at: 0)
for a in arr{
    print(a)
}

print("----forEach ----")

arr.forEach { (a) in
    print(a)
}

print("----print($0)----")

var s = arr.forEach { print($0) }


//Clousres
arr.sort { (s1, s2) -> Bool in
    s1 > s2
}

print("----print($0) 2 ----")
arr.forEach { print($0) }


arr.sort {$0 < $1 }

print("----print($0) 3 ----")
arr.forEach { print($0) }

//dicts
print("---- dicts ----")
let lastName = "Feliciano"
var dict = ["Nome":"Gonçalo", "ultimoNome":lastName]

dict.forEach { (key, value) in
    print("\(key) -> \(value)")
}

print("---- for in ----")

for a in dict.values{
    print(a)
}

print("---- add ----")
dict["data"] = "2019"

dict.forEach { (key, value) in
    print("\(key) -> \(value)")
}

let cont = dict.contains { (key: String, value: String) -> Bool in
    
    (key == "data" && value == "2019" )
}

print(cont)


dict["data"] = nil


print("---- del data ----")

dict.forEach { (key, value) in
    print("\(key) -> \(value)")
}


// sets

var set1:Set = ["Picanha", "Alcatra", "Lombo", "Batata Frita", "Arroz"]
var set2:Set = ["Picanha", "Batata Frita", "Arroz", "Feijão"]

set1.contains("Picanha")

print("---- Set ----")
for a in set1{
    print(a)
}

var x = set1.insert("Farofa")

print("---- Add ----")
for a in set1{
    print(a)
}

set1.insert("Farofa")

print("---- Add 2 farofa ----")
for a in set1{
    print(a)
}

set1.insert("Ovos")

set1.count
set1.capacity


var set3:Set = ["Picanha", "Alcatra", "Lombo", "Batata Frita", "Arroz","Picanha", "Alcatra", "Lombo", "Batata Frita", "Arroz","Picanha", "Alcatra", "Lombo", "Batata Frita", "Arroz","Picanha", "Alcatra", "Lombo", "Batata Frita", "Arroz","Picanha", "Alcatra", "Lombo", "Batata Frita", "Arroz","Picanha", "Alcatra", "Lombo", "Batata Frita", "Arroz","Picanha", "Alcatra", "Lombo", "Batata Frita", "Arroz","Picanha", "Alcatra", "Lombo", "Batata Frita", "Arroz"]


set3.count
set3.capacity


set1.remove("arroz")

print("---- remove  ----")
for a in set1{
    print(a)
}


// funcs
print("---- Funcs  ----")


func teste(nome:String, ano:Int) -> String{
   
    var anoPar = "par"
  
    return "ola mundo \(nome) em \(ano) e ano é \(anoPar)"
}

print(teste(nome:"Gonçalo", ano:2019))







func soma( _ numA:Int, _ numB:Int) -> Int {
    numA + numB
}


print(soma(4, 3))



