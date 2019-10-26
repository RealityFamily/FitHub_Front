//
//  PlanViewController.swift
//  FitHub
//
//  Created by RealityFamily on 26/10/2019.
//  Copyright © 2019 RealityFamily. All rights reserved.
//

import Foundation
import UIKit

class PlanViewController : UIViewController{
    
    @IBOutlet weak var TodayTodoListView: UICollectionView!
}

extension TodayTodoList : UICollectionViewDelegate, UICollectionViewDataSource{
    
}
