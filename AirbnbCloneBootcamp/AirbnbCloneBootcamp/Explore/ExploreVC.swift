//
//  FavoriteScreen.swift
//  AirbnbCloneBootcamp
//
//  Created by Eduardo Felipe das Neves Abido on 05/08/24.
//

import Foundation
import UIKit

class ExploreVC: UIViewController {
    
    var screen: ExploreScreen?
    var viewModel = ExploreViewModel()
    
    override func loadView() {
        screen = ExploreScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.configCollectionViewProtocols(delegate: self, dataSource: self)
    }
    
}

extension ExploreVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell
        cell?.setupCell(travelCategory: viewModel.loadCurrentTravelCategory(indexPath: indexPath))
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CategoryCollectionViewCell.calculateSize(title: viewModel.getCategory(indexPath: indexPath))
    }
    
}
