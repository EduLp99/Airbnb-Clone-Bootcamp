//
//  ViewController.swift
//  AirbnbCloneBootcamp
//
//  Created by Eduardo Felipe das Neves Abido on 05/08/24.
//

import UIKit

class MainTabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let tela01 = createNavController(viewController: ExploreVC(), title: "Explorar", imageName: "magnifyingglass")
    let tela02 = createNavController(viewController: FavoriteVC(), title: "Favoritos", imageName: "heart")
    let tela03 = createNavController(viewController: TravelVC(), title: "Viagens", imageName: "star")
    let tela04 = createNavController(viewController: MessageVC(), title: "Mensagens", imageName: "message")
    let tela05 = createNavController(viewController: ProfileVC(), title: "Perfil", imageName: "person.crop.circle")

    viewControllers = [tela01, tela02, tela03, tela04, tela05]
    customizeTabBarAppearance()
  }

  private func createNavController(viewController: UIViewController, title: String, imageName: String) -> UINavigationController {
    let navController = UINavigationController(rootViewController: viewController)
    navController.tabBarItem.title = title
    navController.tabBarItem.image = UIImage(systemName: imageName)
    return navController
  }

  private func customizeTabBarAppearance() {
    tabBar.tintColor = .red
    tabBar.unselectedItemTintColor = .lightGray
    tabBar.backgroundColor = .white
    tabBar.isTranslucent = false
    tabBar.layer.borderColor = UIColor.lightGray.cgColor
    tabBar.layer.borderWidth = 0.5
  }

}

