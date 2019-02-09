//
//  View.swift
//  ProgrammaticUICollectionView
//
//  Created by Joshua Viera on 1/28/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import UIKit

class View: UIView {
    
    var collectionview: UICollectionView!
    var cellId = "Cell"
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
        fatalError("init(coder:) failed to implement")
    }
    
    private func commonInit() {
        backgroundColor = .gray
        setupViews()
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
         addSubview(collectionview)
        collectionview.register(FreeLancerCell.self, forCellWithReuseIdentifier: cellId)
        collectionview.dataSource = self
        collectionview.delegate = self
    }
    
}


extension View : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    private func setupViews(){
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: self.frame.width, height: 500)
        
        collectionview = UICollectionView(frame: self.frame, collectionViewLayout: layout)
        collectionview.showsVerticalScrollIndicator = true
        collectionview.backgroundColor = .black
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! FreeLancerCell
        return cell
    }
    
}
