//
//  LoginViewController.swift
//  AirbnbCloneBootcampProfessor
//
//  Created by Eduardo Felipe das Neves Abido  on 19/09/24.
//
import UIKit

class LoginViewController: UIViewController {

  var screen: LoginScreen?

  override func viewWillAppear(_ animated: Bool) {
    navigationController?.isNavigationBarHidden = true
  }

  override func loadView() {
    screen = LoginScreen()
    view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    screen?.delegate = self
  }

}

extension LoginViewController: LoginScreenProtocol {
  func tappedSignIn() {
    navigationController?.pushViewController(MainTabBarController(), animated: true)
  }

  func tappedCreateAccount() {
    print(#function)
  }

  func tappedGoogle() {
    print(#function)
  }

  func tappedFacebook() {
    print(#function)
  }
}
