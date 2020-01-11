//
//  ViewController.swift
//  tabelas:pCellV2_PLA1
//
//  Created by Gonçalo Feliciano on 18/12/2019.
//  Copyright © 2019 Gonçalo Feliciano. All rights reserved.
//

import UIKit



class pCell:UITableViewCell{

    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var sw: UISwitch!
    
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabela: UITableView!
    
    //var data:[Comida] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabela.delegate = self
        self.tabela.dataSource = self
        
        //self.data.append(Comida(nome: "Picanha", foto: "Picanha"))
        //self.data.append(Comida(nome: "Alcatra", foto: "Alcatra"))

    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! pCell
    
        
        cell.foto.image = nil
        cell.nome.text = "teste"
        
            return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        100
    }
    
}

