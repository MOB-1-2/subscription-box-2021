//
//  FeaturedCell.swift
//  CompositionalCollection
//
//  Created by Adriana González Martínez on 2/12/20.
//  Copyright © 2020 Adriana González Martínez. All rights reserved.
//

import UIKit

class FeaturedCell: UICollectionViewCell {
    static var identifier: String = "FeaturedCell"
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var mainView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }

    func setup(){
        mainView.layer.cornerRadius = 10
        mainView.layer.backgroundColor = UIColor(named: "white")
    }
}
