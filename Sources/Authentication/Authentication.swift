// The Swift Programming Language

import Foundation

public struct Authentication {
    public init() {}

    public func login(user: String, password: String) -> Bool {
        // Aquí va tu lógica real
        // Ejemplo: usuario "admin" y password "1234" es válido
        return user == "admin" && password == "1234"
    }
}
