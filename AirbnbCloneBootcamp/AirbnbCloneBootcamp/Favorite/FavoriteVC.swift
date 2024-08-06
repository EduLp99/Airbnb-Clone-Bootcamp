//
//  FavoriteVC.swift
//  AirbnbCloneBootcamp
//
//  Created by Eduardo Felipe das Neves Abido on 05/08/24.
//

import UIKit

class FavoriteVC: UIViewController {

    var screen: FavoriteScreen?

    override func loadView() {
      screen = FavoriteScreen()
      view = screen
    }

    override func viewDidLoad() {
      super.viewDidLoad()
    }


}
