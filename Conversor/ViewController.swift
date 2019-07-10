//
//  ViewController.swift
//  Conversor
//
//  Created by ALgy Aly on 7/10/19.
//  Copyright © 2019 ALgy Aly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var decimalNr: UITextField!
    @IBOutlet weak var binarioNr: UITextField!
    @IBOutlet weak var notific: UILabel!
    @IBAction func actionConvert(_ sender: Any) {
        if let dec = Int(decimalNr.text!) {
            if dec > 0 {
                var binario = ""
                var div = dec
                while div != 0 {
                    if Double(div%2) != 0.5 {
                        binario.append(String(div%2))
                    } else {
                        binario.append("1")
                    }
                    div = div/2
                }
                let binar = Array(binario)
                var c = binario.count - 1
                binario = ""
                while c >= 0 {
                    binario.append(binar[c])
                    c-=1
                }
                binarioNr.text = binario
                notific.textColor = UIColor.red
                notific.text = "NB: Lembre que números binarios lê-se da esquerda á direita"
            } else {
                print("Erro! Número decimal deve ser positivo")
            }
        } else {
            print("Introduza o número decimal")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
