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
        screen?.configTableViewProtocols(delegate: self, dataSource: self)
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard viewModel.getSelectedCategoryIndex != indexPath.row else { return }
        let oldIndexPath = IndexPath(row: viewModel.getSelectedCategoryIndex, section: 0)
        viewModel.setSelectedCategory(indexPath: indexPath)
        
        collectionView.reloadItems(at: [oldIndexPath, indexPath])
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
}

extension ExploreVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsPropertyData
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      guard let cell = tableView.dequeueReusableCell(withIdentifier: DestinationTableViewCell.identifier, for: indexPath) as? DestinationTableViewCell else { return UITableViewCell() }
      cell.setupCell(data: viewModel.loadCurrentPropertyData(indexPath: indexPath))
      return cell
    }
    
    
}
