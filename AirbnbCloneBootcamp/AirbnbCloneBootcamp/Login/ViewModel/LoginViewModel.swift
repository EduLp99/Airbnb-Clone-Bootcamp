//
//  LoginViewModel.swift
//  AirbnbCloneBootcampProfessor
//
//  Created by Eduardo Felipe das Neves Abido on 19/09/24.
//
import Foundation
import FirebaseAuth


protocol LoginViewModelProtocol: AnyObject {
    func successLogin()
    func errorLogin(title: String, message: String)
}

class LoginViewModel {
    
    weak var delegate: LoginViewModelProtocol?
    
    func fetchLogin(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            guard let self else { return }
            
            guard error == nil else {
                delegate?.errorLogin(title: "Atenção!", message: error?.localizedDescription ?? "")
                return
            }
            
            delegate?.successLogin()
        }
    }
    
}
