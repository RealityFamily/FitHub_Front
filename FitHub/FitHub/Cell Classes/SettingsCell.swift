//
//  SettingsCell.swift
//  FitHub
//
//  Created by RealityFamily on 27/10/2019.
//  Copyright © 2019 RealityFamily. All rights reserved.
//

import Foundation
import UIKit

class SettingsCell: UITableViewCell {
    
    @IBOutlet weak var Name: UILabel!
    
    func setData(fieldtext: String) {
        Name.text = fieldtext
    }
    
    func setData(){
        Name.text = ""
    }
}
