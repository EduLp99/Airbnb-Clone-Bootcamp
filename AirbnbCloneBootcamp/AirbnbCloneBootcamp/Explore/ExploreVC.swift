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

  override func loadView() {
    screen = ExploreScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

}
