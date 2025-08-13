// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct AuthenticationView: View {
    public init() {}
    
    public var body: some View {
        VStack {
            Text("Login Screen")
                .font(.title)
            Button("Login") {
                print("User logged in")
            }
        }
    }
}
