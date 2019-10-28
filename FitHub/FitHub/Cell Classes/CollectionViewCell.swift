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
    
    var value:Int = 0
    var cellwidth:CGFloat = 0.0
    var cellheight:CGFloat = 0.0
    var fullRing:Bool = false
    
    func createCell(fieldname: String, fieldvalue: Int, width: CGFloat, height: CGFloat, fullRingAtField: Bool) {
        Name.text = fieldname
        value = fieldvalue
        
        cellwidth = width
        cellheight = height
        fullRing = fullRingAtField
        
        createCirclePath()
        
        NSLayoutConstraint(item: self, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: width).isActive = true
        NSLayoutConstraint(item: self, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: height).isActive = true
        
        CellView.layer.borderWidth = 1
        CellView.layer.borderColor = UIColor.black.cgColor
        CellView.layer.cornerRadius = 20
        
        Name.frame.size.width =  width - 10
        Name.center = CGPoint(x: width / 2, y: height / 2)
        Name.textAlignment = .center
    }
    func createCell(fieldname: String, width: CGFloat, height: CGFloat) {
        Name.text = fieldname
        value = 0
        
        cellwidth = width
        cellheight = height
        
        NSLayoutConstraint(item: self, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: width).isActive = true
        NSLayoutConstraint(item: self, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: height).isActive = true
        
        CellView.layer.borderWidth = 1
        CellView.layer.borderColor = UIColor.black.cgColor
        CellView.layer.cornerRadius = 20
        
        Name.frame.size.width =  width - 10
        Name.center = CGPoint(x: width / 2, y: height / 2)
        Name.textAlignment = .center
    }
    
    
    // ниже описывается алгоритм отрисовки состояний дугой
    private var circleLayer = CAShapeLayer()
    private var progressLayer = CAShapeLayer()
    
    func createCirclePath() {
        
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: cellwidth / 2, y: cellheight / 2), radius: cellwidth / 2.5, startAngle: 3 * .pi / 4, endAngle: fullRing ? .pi / 4 : 3 * .pi / 4, clockwise: true)
        
        circleLayer.path = circlePath.cgPath
        circleLayer.fillColor = UIColor.clear.cgColor
        circleLayer.lineCap = .round
        circleLayer.lineWidth = 6
        circleLayer.strokeColor = UIColor.black.cgColor
        
        progressLayer.path = circlePath.cgPath
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.lineCap = .round
        progressLayer.lineWidth = 5
        progressLayer.strokeColor = UIColor.red.cgColor
        
        CellView.layer.addSublayer(circleLayer)
        CellView.layer.addSublayer(progressLayer)
    }
}
