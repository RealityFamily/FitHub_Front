//
//  TrainingViewController.swift
//  FitHub
//
//  Created by RealityFamily on 27/10/2019.
//  Copyright © 2019 RealityFamily. All rights reserved.
//

import UIKit

class TrainingViewController: UIViewController {

    @IBOutlet weak var ActionButton: UIButton!
    @IBOutlet var MainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ActionButton.layer.borderWidth = 1
        ActionButton.layer.borderColor = UIColor.black.cgColor
        ActionButton.layer.cornerRadius = 12.5
        ActionButton.setTitleColor(UIColor.black, for: .normal)
        
        ActionButton.center = CGPoint(x: MainView.frame.size.width / 4, y: MainView.frame.height - 60 - 15)
        
        if (true) {
            ActionButton.frame.size = CGSize(width: 250, height: 30)
            ActionButton.setTitle("Выбрать план тренировки", for: .normal)
            
            let label = UILabel()
            label.frame.size = CGSize(width: 300, height: 60)
            label.numberOfLines = 0
            label.textAlignment = NSTextAlignment.center
            label.center = CGPoint(x: MainView.frame.size.width / 2, y: (MainView.frame.height - 60) / 2)
            label.text = "Тренировочная программа еще не выбрана"
            MainView.addSubview(label)
        } else {
            ActionButton.frame.size = CGSize(width: 200, height: 30)
            ActionButton.setTitle("Начать тренировку", for: .normal)
            
            let label = UILabel()
            label.frame.size = CGSize(width: 300, height: 60)
            label.numberOfLines = 0
            label.textAlignment = NSTextAlignment.center
            label.center = CGPoint(x: MainView.frame.size.width / 2, y: (MainView.frame.height - 60) / 2)
            label.text = "Лучшая сушка от профи"
            MainView.addSubview(label)
            
            label.frame.size = CGSize(width: 300, height: 60)
            label.numberOfLines = 0
            label.textAlignment = NSTextAlignment.center
            label.center = CGPoint(x: MainView.frame.size.width / 2, y: (MainView.frame.height - 60) / 2)
            label.text = "3 день цикла упражнений - блок рук"
            MainView.addSubview(label)
        }
    }

    @IBAction func ActionButtonPressed(_ sender: UIButton) {
        if (sender.currentTitle! == "Выбрать план тренировки"){
            let viewController = self.storyboard!.instantiateViewController(identifier: "NavViewController") as! UINavigationController
            self.present(viewController, animated: true, completion: nil)
        }
    }
    
}
