//
//  ExploreViewModel.swift
//  AirbnbCloneBootcamp
//
//  Created by Eduardo Felipe das Neves Abido on 26/08/24.
//

import Foundation

class ExploreViewModel {
    
    private var categoryList: [TravelCategory] = [
    ]
    
    var numberOfItems: Int {
      return categoryList.count
    }
    
    func loadCurrentTravelCategory(indexPath: IndexPath) -> TravelCategory {
      return categoryList[indexPath.row]
    }

    func getCategory(indexPath: IndexPath) -> String {
      return loadCurrentTravelCategory(indexPath: indexPath).category
    }
}
