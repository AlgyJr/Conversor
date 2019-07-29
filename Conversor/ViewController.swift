//
//  ViewController.swift
//  Conversor
//
//  Created by ALgy Aly on 7/10/19.
//  Copyright © 2019 ALgy Aly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recept: UITextField!
    @IBOutlet weak var result: UITextField!
    @IBAction func actionBin(_ sender: Any) {
        
    }
    
    @IBAction func bottomDec(_ sender: Any) {
        if let dec = Int(recept.text!) {
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
                result.text = binario
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
