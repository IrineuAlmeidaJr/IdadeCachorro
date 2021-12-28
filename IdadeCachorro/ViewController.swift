//
//  ViewController.swift
//  IdadeCachorro
//
//  Created by Irineu Almeida Júnior on 26/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var legendaResultado: UILabel!
        
    @IBOutlet weak var campoIdadeCachorro: UITextField!
    
    @IBAction func descobrirIdade(_ sender: Any) {
        
        let leitura = campoIdadeCachorro.text?.isEmpty
        if leitura == true {
            legendaResultado.text = "Digite algo. Campo vazio!"
        } else {
            let idade = Int(campoIdadeCachorro.text!)! * 7
            idade > 0 ? (legendaResultado.text = "A idade do cachorro em anos humanos é: " + String(idade)) : (legendaResultado.text = "Digite idade válida. Idade maior que zero")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

