//
//  GenericCell.swift
//  ProgrammaticUICollectionView
//
//  Created by Joshua Viera on 2/8/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import UIKit

class GenericCell: UICollectionViewCell {
    
    let profileImageButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.layer.cornerRadius = 18
        button.clipsToBounds = true
        return button
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor.darkGray
        label.text = "Joshua Viera"
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    func addViews(){
        backgroundColor = .white
        addSubview(profileImageButton)
        addSubview(nameLabel)
        setConstraints()
    }
    
    func setConstraints(){
        photoImageConstraints()
        nameLabelConstraints()
    }
    
    func photoImageConstraints(){
        profileImageButton.translatesAutoresizingMaskIntoConstraints = false
        profileImageButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        profileImageButton.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        profileImageButton.heightAnchor.constraint(equalToConstant: 36).isActive = true
        profileImageButton.widthAnchor.constraint(equalToConstant: 36).isActive = true
    }
    
    func nameLabelConstraints(){
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.leftAnchor.constraint(equalTo: profileImageButton.rightAnchor, constant: 5).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: profileImageButton.centerYAnchor, constant: -8).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

