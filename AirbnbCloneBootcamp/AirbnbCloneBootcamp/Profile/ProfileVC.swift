//
//  ProfileVC.swift
//  AirbnbCloneBootcamp
//
//  Created by Eduardo Felipe das Neves Abido on 05/08/24.
//

import UIKit

class ProfileVC: UIViewController {

    var screen: ProfileScreen?

    override func loadView() {
      screen = ProfileScreen()
      view = screen
    }

    override func viewDidLoad() {
      super.viewDidLoad()
    }

}
