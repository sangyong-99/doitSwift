//
//  ViewController.swift
//  HelloWorld
//
//  Created by 신상용 on 2023/02/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var IbIHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnSend(_ sender: UIButton) {
        IbIHello.text = "Hello, " + txtName.text!
    }
}

