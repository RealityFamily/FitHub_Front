//
//  CollectionViewCell.swift
//  FitHub
//
//  Created by RealityFamily on 27/10/2019.
//  Copyright © 2019 RealityFamily. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var CellView: UIView!
    
    func setWidth(width: CGFloat, height: CGFloat) {
        NSLayoutConstraint(item: self, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: width).isActive = true
        NSLayoutConstraint(item: self, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: height).isActive = true
        
        CellView.layer.borderWidth = 1
        CellView.layer.borderColor = UIColor.black.cgColor
        CellView.layer.cornerRadius = 20
    }
    
    func setData(fieldname: String) {
        Name.text = fieldname
    }
    
    func setData() {
        
    }
}
