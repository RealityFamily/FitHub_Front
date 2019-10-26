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
    
    let taskArray = ["Ккал", "Вода", "Тренировка", "Еда"]
    
    @IBOutlet weak var TodayTodoListView: UICollectionView!
    
    override func viewDidLoad() {
        TodayTodoListView.reloadData()
    }
    
}

extension PlanViewController : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let count = taskArray.count
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var collectionViewCell = CollectionViewCell()
        if (collectionView.tag == 0) {
            collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
            
            collectionViewCell.setWidth(width: 130, height: 118)

            collectionViewCell.setData(fieldname: taskArray[indexPath.row])
        }
        
        return collectionViewCell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 130, height: 118)
//    }
}
