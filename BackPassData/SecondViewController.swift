//
//  SecondViewController.swift
//  BackPassData
//
//  Created by Mac on 01/05/21.
//

import UIKit
protocol DataPassProtocol : class {
    func passData(text : String)
}

class SecondViewController: UIViewController {
    
    weak var delegate : DataPassProtocol?
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnSubmit(_ sender: Any) {
        
        delegate?.passData(text: textField.text!)
        self.navigationController?.popViewController(animated: true)
   
    }
}
