//
//  BlueViewController.swift
//  Navegacao
//
//  Created by Eric Alves Brito on 11/11/20.
//  Copyright © 2020 Afrodev. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    var teste: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func goToPreviousScreen(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goToInitialScreen(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func closeModal(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func goToSecondScreen(_ sender: UIButton) {
        guard let secondViewController = navigationController?.viewControllers[1] else {return}
        navigationController?.popToViewController(secondViewController, animated: true)
    }
}
