//
//  ViewController.swift
//  SimpleApp
//
//  Created by marek on 19.05.2019.
//  Copyright © 2019 Marek Garczewski. All rights reserved.
//

import UIKit
protocol dataTransfer {
    func dataReceived(data: Model)
}
class ViewController: UIViewController {

    @IBOutlet weak var company: UITextField!
    @IBOutlet weak var model: UITextField!
    @IBOutlet weak var amount: UITextField!
    var delegate: dataTransfer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func addButtonClicked(_ sender: Any) {
        var newModel: Model = Model(model: model.text!, company: company.text!, amount: Int(amount!.text!)!)
        delegate?.dataReceived(data: newModel)
    }
    
}

