//
//  FeaturedSection.swift
//  CompositionalCollection
//
//  Created by Adriana González Martínez on 2/12/20.
//  Copyright © 2020 Adriana González Martínez. All rights reserved.
//

import UIKit

struct FeaturedSection: Section {
    let numberOfItems = 6
       
       func layoutSection() -> NSCollectionLayoutSection {
           // Step 1
           let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
           
           // Step 2
           let item = NSCollectionLayoutItem(layoutSize: itemSize)
           
           // Step 3
           let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(220), heightDimension: .absolute(300))
           
           // Step 4
           let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
           
           // Step 5
           let section = NSCollectionLayoutSection(group: group)
           section.orthogonalScrollingBehavior = .continuous
           
           return section
       }

       func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
           collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: FeaturedCell.self), for: indexPath)
       }

  
}
