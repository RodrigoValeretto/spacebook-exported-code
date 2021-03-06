//
//  ViewFiveCollectionViewCell.swift
//  Spacebook
//
//  Created by Supernova.
//  Copyright © 2018 Supernova. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class ViewFiveCollectionViewCell: UICollectionViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    var bgPhotoImageView: UIImageView!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }

    private func commonInit()  {
        self.setupComponents()
        self.setupLayout()
    }

    private func setupComponents()  {
        // Setup bgPhotoImageView
        self.bgPhotoImageView = UIImageView()
        self.bgPhotoImageView.backgroundColor = UIColor.clear
        self.bgPhotoImageView.image = UIImage(named: "bg-photo-2")
        self.bgPhotoImageView.contentMode = .scaleToFill
        self.contentView.addSubview(self.bgPhotoImageView)
        self.bgPhotoImageView.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    private func setupLayout()  {
        // Setup layout for components
        // Setup bgPhotoImageView
        self.bgPhotoImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 0).isActive = true
        self.bgPhotoImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 0).isActive = true
        
    }
}
