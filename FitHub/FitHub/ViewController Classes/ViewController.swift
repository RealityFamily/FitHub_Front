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

class Plan2ViewController : UIViewController{
    
    let taskArray = ["Ккал", "Вода", "Тренировка", "Еда"]
    let recomendedList = ["1", "vbcdhsbvchdisbvi", "3", "4", "5"]
    let newslist = ["1", "2" , "3", "4", "5"]
    
    @IBOutlet weak var TTLV: UICollectionView!
    @IBOutlet weak var RL: UICollectionView!
    @IBOutlet weak var NLV: UIStackView!
    
    override func viewDidLoad() {
        TTLV.reloadData()
        RL.reloadData()
        
        newslist.forEach {name in
            let newsContainer = UIView()
            newsContainer.layer.borderWidth = 1
            newsContainer.layer.borderColor = UIColor.black.cgColor
            
            NSLayoutConstraint(item: newsContainer, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100).isActive = true
            NSLayoutConstraint(item: newsContainer, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: NLV.frame.width - 40).isActive = true
            
            let newsName = UILabel()
            newsName.text = name
            newsContainer.addSubview(newsName)
            NLV.addArrangedSubview(newsContainer)
        }
        
        
//        ScrollingContentView.bottomAnchor.constraint(equalTo: NewsListView.bottomAnchor).isActive = true
    }
}

extension Plan2ViewController : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var count = 0
        if (collectionView == TTLV) {
            count = taskArray.count
        } else if (collectionView == RL) {
            count = recomendedList.count
        }
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var collectionViewCell = CollectionViewCell()
        if (collectionView == TTLV) {
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
        } else if (collectionView == RL) {
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
