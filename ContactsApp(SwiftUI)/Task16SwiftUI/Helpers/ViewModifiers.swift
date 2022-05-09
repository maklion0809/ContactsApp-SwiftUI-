//
//  ViewModifiers.swift
//  Task16SwiftUI
//
//  Created by Tymofii (Work) on 09.12.2021.
//

import SwiftUI

struct Form: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .frame(width: 200, height: 200)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CustomStyleText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.gray)
            .font(.headline)
    }
}

struct RowTextField: ViewModifier {
    var keyboardType: UIKeyboardType
    func body(content: Content) -> some View {
        content
            .frame(height: 50)
            .padding(.leading, 16)
            .background(Color.white)
            .shadow(radius: 10)
            .keyboardType(keyboardType)
    }
}
