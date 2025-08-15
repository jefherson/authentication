//
//  LoginView.swift
//  Authentication
//
//  Created by jefherson Huarhuachi on 14/08/25.
//

import SwiftUI

public struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var message = ""

    let auth = Authentication()

    public init() {}

    public var body: some View {
        VStack(spacing: 16) {
            Text("🔐 Login")
                .font(.largeTitle)

            TextField("Usuario", text: $username)
                .textFieldStyle(.roundedBorder)

            SecureField("Contraseña", text: $password)
                .textFieldStyle(.roundedBorder)

            Button("Iniciar sesión") {
                if auth.login(user: username, password: password) {
                    message = "✅ Login exitoso"
                } else {
                    message = "❌ Credenciales inválidas"
                }
            }
            .buttonStyle(.borderedProminent)

            Text(message)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}
