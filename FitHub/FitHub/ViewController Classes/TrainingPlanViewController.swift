//
//  TrainingPlanViewController.swift
//  FitHub
//
//  Created by RealityFamily on 27/10/2019.
//  Copyright © 2019 RealityFamily. All rights reserved.
//

import UIKit

class TrainingPlanViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var Photo: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Discription: UILabel!
    @IBOutlet weak var ExerciseListView: UITableView!
    @IBOutlet weak var ActionButton: UIButton!
    
    var name = ""
    var discription = ""
    var data:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Name.text = name
        Discription.text = discription
        ExerciseListView.reloadData()
        
        self.navigationController?.isNavigationBarHidden = false
    }
    
    func setData(fieldName: String, fieldDiscription: String, fieldData: [String]) {
        name = fieldName
        discription = fieldDiscription
        data = fieldData
    }

    @IBAction func ActionButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ExerciseListView.dequeueReusableCell(withIdentifier: "ExerciseCell") as! ExerciseCell
        
        cell.Name.text = data[indexPath.row]
        
        return cell
    }
}
