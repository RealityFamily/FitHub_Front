//
//  PlanViewController.swift
//  FitHub
//
//  Created by RealityFamily on 26/10/2019.
//  Copyright © 2019 RealityFamily. All rights reserved.
//

import Foundation
import UIKit
import SwaggerClient

class PlanViewController : UIViewController{
    
    let taskArray = ["Ккал", "Вода", "Тренировка", "Еда"]
    let recomendedList = ["1", "vbcdhsbvchdisbvi", "3", "4", "5"]
    let newslist = ["1", "2" , "3", "4", "5"]
    
    @IBOutlet weak var TodayTodoListView: UICollectionView!
    @IBOutlet weak var RecomendationsList: UICollectionView!
    @IBOutlet weak var NewsListView: UIStackView!
    @IBOutlet weak var ScrollingView: UIScrollView!
    @IBOutlet weak var ScrollingContentView: UIView!
    
    override func viewDidAppear(_ animated: Bool) {
        TodayTodoListView.reloadData()
        RecomendationsList.reloadData()
    }
}

extension PlanViewController : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var count = 0
        if (collectionView == TodayTodoListView) {
            count = taskArray.count
        } else if (collectionView == RecomendationsList) {
            count = recomendedList.count
        }
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var collectionViewCell = CollectionViewCell()
        if (collectionView == TodayTodoListView) {
            collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell

            var fullRing = false
            if (indexPath.row == 3) {fullRing = true
            }
            collectionViewCell.createCell(
                fieldname: taskArray[indexPath.row],
                fieldvalue: 20,
                width: collectionView.frame.width / 2 - 5,
                height: collectionView.frame.height / 2 - 5,
                fullRingAtField: fullRing)
        } else if (collectionView == RecomendationsList) {
            collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell

            collectionViewCell.createCell(
                fieldname: recomendedList[indexPath.row],
                width: (collectionViewCell.Name.intrinsicContentSize.width + 40 > 118) ? collectionViewCell.Name.intrinsicContentSize.width + 40 : 118,
                height: 118
            )
        }
        
        return collectionViewCell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
}
