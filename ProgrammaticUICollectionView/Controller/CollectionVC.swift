//
//  CollectionVC.swift
//  ProgrammaticUICollectionView
//
//  Created by Joshua Viera on 2/8/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import UIKit

class CollectionVC: UIViewController {
    
    let myView = CollectionViewView()
    var cellId = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        myView.collectionview.dataSource = self
        myView.collectionview.delegate = self
    }
}
extension CollectionVC : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myView.collectionview.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! GenericCell
        return cell
    }
    
    
    
    
}
