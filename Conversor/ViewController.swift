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
        let b = recept.text!
        let letras : [Character] = Array(b)
        if procurarAlfabeto(letras: letras) {
            var decimal : Double = 0
            var elevado : Int = b.count - 1
            
            for letra in letras {
                if letra == "1" {
                    decimal = decimal + pow(Double(2),Double(elevado))
                }
                elevado -= 1
            }
            result.text = "\(decimal)"
        } else {
            //Erro! Introduza número binário de 2/4/8/16 bits!\nTente novamente
            
        }
    }
    
    func procurarAlfabeto(letras: [Character]) -> Bool {
        for letra in letras {
            print(letra)
            if letra != "0" && letra != "1" {
                return false
            }
        }
        return true
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
            } else if dec == 0 {
                result.text = "0"
            } else {
                //Erro! Número decimal deve ser positivo
                //Tem que resolver ainda
                recept.layer.borderColor = UIColor.red.cgColor
            }
        } else {
            //Erro de campo vazio
            //Tem que se resolver ainda
            recept.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
