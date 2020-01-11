//
//  ViewController.swift
//  PIII_PLB
//
//  Created by Gonçalo Feliciano on 05/12/2019.
//  Copyright © 2019 Gonçalo Feliciano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var txt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.lbl.text = ""
        self.txt.placeholder = "Qual o seu nome"
        self.txt.textAlignment = .center
        
        self.txt.delegate = self

    }

    @IBAction func btn() {
        
        guard self.lbl.setText2(form: self.txt) != nil else {
            alerta(titulo: "Erro", msg: "caixa de texto sem conteudo")
            return
        }
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)

    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.btn()
        return true
        
    }

    func alerta(titulo:String, msg:String){
        
        self.view.endEditing(true)
        let alerta = UIAlertController(title: titulo, message: msg, preferredStyle: .alert)
        let act = UIAlertAction(title: "OK", style: .default) { (a) in
            
            self.txt.backgroundColor = .red
            
        }
        
        alerta.addAction(act)
        
        self.present(alerta, animated: true, completion: nil)
        
    }
    
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        self.txt.backgroundColor = .clear
    }
    
}


extension UITextField{
    
    func clearText(){

        self.text = nil
    }
    
    func isEmpty() -> Bool{
        self.text!.isEmpty
    }
    
}


extension UILabel{
    
    func setText(form textField: UITextField){
        
        self.text = textField.text
        textField.clearText()
        textField.resignFirstResponder()
   
    }
    
    
     func setText2(form textField: UITextField) -> Bool?{

        if !textField.isEmpty(){
            self.text = textField.text
            textField.clearText()
            textField.resignFirstResponder()
            return true
        }
        return nil
        
        
     }
    
}
