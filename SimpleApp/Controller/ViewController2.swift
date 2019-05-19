//
//  ViewController2.swift
//  SimpleApp
//
//  Created by marek on 19.05.2019.
//  Copyright © 2019 Marek Garczewski. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var company: UILabel!
    @IBOutlet weak var model: UILabel!
    @IBOutlet weak var amount: UILabel!
    
    var carModel:Model?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        company.text = carModel?.company ?? ""
        model.text = carModel?.model ?? ""
        amount.text = carModel?.amount?.description ?? ""

    }
    

}
