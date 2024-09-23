//
//  LoginViewController.swift
//  AirbnbCloneBootcampProfessor
//
//  Created by Eduardo Felipe das Neves Abido  on 19/09/24.
//
import UIKit

class LoginViewController: UIViewController {
    
    var screen: LoginScreen?
    var viewModel: LoginViewModel = LoginViewModel()
    
    
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
        viewModel.delegate = self
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okButton)
        present(alertController, animated: true)
    }
    
}

extension LoginViewController: LoginScreenProtocol {
    func tappedSignIn() {
        
        guard let email: String = screen?.emailTextField.text,
              let password: String = screen?.passwordTextField.text,
              !email.isEmpty,
              !password.isEmpty else {
            showAlert(title: "Atenção!", message: "Por favor, preencha todos os campos")
            return
        }
        
        viewModel.fetchLogin(email: email, password: password)
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

extension LoginViewController: LoginViewModelProtocol {
    
    func successLogin() {
        navigationController?.pushViewController(MainTabBarController(), animated: true)
        print("Login efetuado com sucesso!")
    }
    
    func errorLogin(title: String, message: String) {
        showAlert(title: title, message: message)
    }
}

