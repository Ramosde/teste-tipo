//
//  ViewController.swift
//  Tabelas_PCIIIPL
//
//  Created by Gonçalo Feliciano on 13/12/2019.
//  Copyright © 2019 Gonçalo Feliciano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabela: UITableView!
   
    var titulos = ["A","C","M"]
    
    var nomes = [["Armindo", "Ana", "Antonio"], ["Carla"], ["Maria", "Mariana"]]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabela.delegate = self
        self.tabela.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return nomes.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nomes[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = nomes[indexPath.section][indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return self.titulos[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if (indexPath.row == 0){
            return 100
        }else {
            
         return
            50
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
     let selcValue = nomes[indexPath.section][indexPath.row]
         
        self.alerta(msg: selcValue, indexPath: indexPath)
    }
    
    
    
    func alerta(msg:String, indexPath: IndexPath){
        
        let al = UIAlertController(title: "Nome", message: msg, preferredStyle: .alert)
        
        let btna = UIAlertAction(title: "OK", style: .cancel){ (a) in
            self.tabela.deselectRow(at: indexPath, animated: false)
        }
        
         let btna2 = UIAlertAction(title: "OK2", style: .default){ (a) in
             self.tabela.backgroundColor = .clear
         }
        
        
        let btna3 = UIAlertAction(title: "OK3", style: .destructive){ (a) in
            self.tabela.backgroundColor = .red
        }

        al.addAction(btna)
        al.addAction(btna2)
        al.addAction(btna3)
        self.present(al, animated: true, completion: nil)
    }
}


