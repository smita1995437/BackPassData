//
//  ViewController.swift
//  BackPassData
//
//  Created by Mac on 01/05/21.
//

import UIKit

class ViewController: UIViewController,  DataPassProtocol {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }

    @IBAction func btnClick(_ sender: Any) {
        
        let svc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        svc.delegate = self
        
        self.navigationController?.pushViewController(svc, animated: true)
        }
    
        func passData(text: String) {
        self.textField.text = text
        
    }
    
}


