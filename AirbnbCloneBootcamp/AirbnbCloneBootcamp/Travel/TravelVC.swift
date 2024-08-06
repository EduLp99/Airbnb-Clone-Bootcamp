//
//  TravelVC.swift
//  AirbnbCloneBootcamp
//
//  Created by Eduardo Felipe das Neves Abido on 05/08/24.
//

import UIKit

class TravelVC: UIViewController {

    var screen: TravelScreen?

    override func loadView() {
      screen = TravelScreen()
      view = screen
    }

    override func viewDidLoad() {
      super.viewDidLoad()
    }

}
