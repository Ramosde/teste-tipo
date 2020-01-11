//
//  DataViewController.swift
//  testetipolaba
//
//  Created by Gonçalo Feliciano on 10/01/2020.
//  Copyright © 2020 Gonçalo Feliciano. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var cellNum: UILabel!
    @IBOutlet weak var txt1: UILabel!
    @IBOutlet weak var txt2: UILabel!
    
    var dadosDetalhes:myCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cellNum.text = "cell Num: \(dadosDetalhes!.idCell!)"
        txt1.text = dadosDetalhes!.dados!.txt1
        txt2.text = dadosDetalhes!.dados!.txt2
    }
}
