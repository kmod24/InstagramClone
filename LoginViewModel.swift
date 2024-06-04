//
//  LoginViewModel.swift
//  Instagram
//
//  Created by Kyle Modina on 5/30/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
