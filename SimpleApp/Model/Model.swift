//
//  Model.swift
//  SimpleApp
//
//  Created by marek on 19.05.2019.
//  Copyright © 2019 Marek Garczewski. All rights reserved.
//

import Foundation
class Model {
    var model: String?
    var company: String?
    var amount: Int?
    
    init(model: String, company: String, amount: Int) {
        self.model = model
        self.company = company
        self.amount = amount
    }
}
