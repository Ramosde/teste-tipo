//
//  ViewController.swift
//  testetipolaba
//
//  Created by Gonçalo Feliciano on 10/01/2020.
//  Copyright © 2020 Gonçalo Feliciano. All rights reserved.
//

import UIKit

class myCell:UITableViewCell{
    
    var dados:(txt1:String, txt2:String)?
    var idCell:Int?
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var tabela: UITableView!
    
    var dados:[(txt1:String, txt2:String)] = [] {
        didSet{
            self.txt1.text = nil
            self.txt2.text = nil
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabela.delegate = self
        self.tabela.dataSource = self
        
    }

    
    @IBAction func btna(_ sender: Any) {
        if !txt1.text!.isEmpty {
            dados.append((txt1.text!, txt2.text!))
            tabela.reloadData()
        }
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dados.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = myCell()
        
        
        cell.textLabel?.text = dados[indexPath.row].txt1
        cell.dados = dados[indexPath.row]
        cell.idCell = indexPath.row
        
        return cell
      }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let dataToSend = tableView.cellForRow(at: indexPath)
        performSegue(withIdentifier: "dataVC", sender: dataToSend)
        
        tableView.deselectRow(at: indexPath, animated: false)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destVC = segue.destination as! DataViewController
        
        destVC.dadosDetalhes = sender as? myCell
        
        
    }
    
    
    
}

