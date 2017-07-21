//
//  ViewController.swift
//  dataPassing
//
//  Created by NareshNaidu on 21/07/17.
//  Copyright © 2017 NareshNaidu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func onTappedButton(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: SecondViewController())
        
        if textField.text != "" {
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let secondController = segue.destination as? SecondViewController
         secondController?.myString = textField.text!
    }
}

