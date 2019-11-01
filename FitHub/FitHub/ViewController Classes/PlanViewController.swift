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

class PlanViewController : UITableViewController{
    
    let taskArray = ["Ккал", "Вода", "Тренировка", "Еда"]
    let recomendedList = ["1", "vbcdhsbvchdisbvi", "3", "4", "5"]
    let newslist = ["1", "2" , "3", "4", "5"]
    
    @IBOutlet weak var TodayTodoListView: UICollectionView!
    @IBOutlet weak var RecomendationsList: UICollectionView!
    @IBOutlet weak var NewsListTable: UITableView!
    
    override func viewDidLoad() {
        TodayTodoListView.reloadData()
        RecomendationsList.reloadData()
        self.tableView.rowHeight = UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView == NewsListTable) {
            return newslist.count
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (tableView == NewsListTable) {
            
        }
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
            if (indexPath.row == 2) {fullRing = true
            }
            collectionViewCell.createCell(
                fieldname: taskArray[indexPath.row],
                fieldvalue: 20,
                width: collectionView.frame.width / 2 - 5,
                height: collectionView.frame.height / 2 - 5,
                fullRingAtField: fullRing)
        } else if (collectionView == RecomendationsList) {
            collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell

            let label = UILabel()
            label.text = recomendedList[indexPath.row]
            
            collectionViewCell.createCell(
                fieldname: recomendedList[indexPath.row],
                width: (label.intrinsicContentSize.width + 50 > 118) ? label.intrinsicContentSize.width + 50 : 118,
                height: 118
            )
        }
        
        return collectionViewCell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
}
