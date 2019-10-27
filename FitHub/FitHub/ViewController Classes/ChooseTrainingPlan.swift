//
//  ChooseTrainingPlan.swift
//  FitHub
//
//  Created by RealityFamily on 27/10/2019.
//  Copyright © 2019 RealityFamily. All rights reserved.
//

import UIKit

class ChooseTrainingPlan: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let best = ["Лучшее для похудения", "Сушка за 2 месяца", "Сушка от профи"]
    let all = ["Набор массы за 16 недель", "Лучшее бля похудения", "Сушка за 2 месяца", "Сохранение формы дома", "Набор для профи", "Сушка от профи"]
    
    @IBOutlet weak var BestView: UITableView!
    @IBOutlet weak var AllView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView == BestView) {
            return best.count
        }else if (tableView == AllView){
            return all.count
        }else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:TaskCell?
        
        if (tableView == BestView) {
            cell = (BestView.dequeueReusableCell(withIdentifier: "BestTaskCell") as! TaskCell)
            if cell!.Name != nil{
                cell!.Name.text = best[indexPath.row]
            }
            if cell!.Discriprion != nil{
                cell!.Discriprion.text = best[indexPath.row]
            }
            
            return cell!
        } else if (tableView == AllView) {
            cell = (AllView.dequeueReusableCell(withIdentifier: "AllTaskCell") as! TaskCell)
            if cell!.Name != nil{
                cell!.Name.text = all[indexPath.row]
            }
            if cell!.Discriprion != nil{
                cell!.Discriprion.text = all[indexPath.row]
            }
            
            return cell!
        } else {
            return cell!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = self.storyboard!.instantiateViewController(identifier: "TrainingPlanInfo") as! TrainingPlanViewController
        if (tableView == BestView) {
            viewController.setData(fieldName: best[indexPath.row], fieldDiscription: best[indexPath.row], fieldData: ["Присидания", "Отжимания"])
        } else if (tableView == AllView) {
            viewController.setData(fieldName: all[indexPath.row], fieldDiscription: all[indexPath.row], fieldData: ["Подтягивания", "Отжимания", "Присидания"])
        } else {
            return
        }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
