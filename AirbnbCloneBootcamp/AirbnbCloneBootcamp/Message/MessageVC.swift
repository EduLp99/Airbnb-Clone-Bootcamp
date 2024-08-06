//
//  MessageVC.swift
//  AirbnbCloneBootcamp
//
//  Created by Eduardo Felipe das Neves Abido on 05/08/24.
//

import UIKit

class MessageVC: UIViewController {

    var screen: MessageScreen?

    override func loadView() {
      screen = MessageScreen()
      view = screen
    }

    override func viewDidLoad() {
      super.viewDidLoad()
    }

}
