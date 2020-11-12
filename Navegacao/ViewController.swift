//
//  ViewController.swift
//  Navegacao
//
//  Created by Eric Alves Brito on 10/11/20.
//  Copyright © 2020 Afrodev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var buttonOrange: UIButton!
    @IBOutlet weak var buttonGreen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if textFieldName.text!.isEmpty {
            labelMessage.text = "Você precisa digitar o seu nome!"
            return false
        } else {
            return true
        }
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        let name = textFieldName.text ?? ""
        labelMessage.text = "Nome: \(name)"
    }
    
    @IBAction func doSomething(_ sender: UIButton) {
        sender.backgroundColor = .red
        
        /*
        if sender.tag == 1 {
            print("Mudei a cor do botão laranja")
        } else if sender.tag == 2 {
            print("Mudei a cor do botão verde")
        } else {
            print("Estranho ter caído aqui!!!")
        }
        */
        
        switch sender {
        case buttonOrange:
            print("Mudei a cor do botão laranja")
        case buttonGreen:
            print("Mudei a cor do botão verde")
            //performSegue(withIdentifier: "orangeSegue", sender: sender)
        default:
            print("Estranho ter caído aqui!!!")
        }
        
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {}
    
    
    @IBAction func showXIB(_ sender: UIButton) {
        let xibViewController = XIBViewController(nibName: nil, bundle: nil)
        //navigationController?.pushViewController(xibViewController, animated: true)
        present(xibViewController, animated: true, completion: nil)
    }
    
}

