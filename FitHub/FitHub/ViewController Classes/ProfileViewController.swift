//
//  ProfileViewController.swift
//  FitHub
//
//  Created by RealityFamily on 27/10/2019.
//  Copyright © 2019 RealityFamily. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    let settingsArray = ["Изменить свои данные", "Изменить своё фото", "Изменить свою цель"]
    
    @IBOutlet weak var SettingsTableView: UITableView!
    
    override func viewDidLoad() {
        SettingsTableView.reloadData()
        
        SettingsTableView.delegate = self
        SettingsTableView.dataSource = self
    }
}

extension ProfileViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell") as! SettingsCell
        
        cell.setData(fieldtext: settingsArray[indexPath.row])
        
        return cell
    }
    
    
}
