//
//  Extentions.swift
//  Task16SwiftUI
//
//  Created by Tymofii (Work) on 09.12.2021.
//

import SwiftUI

// MARK: - Extension for Text

extension Text {
    func customStyle() -> some View {
        self.modifier(CustomStyleText())
    }
}

// MARK: - Extension for Image

extension Image {
    func customStyle() -> some View {
        self.modifier(Form())
    }
}

// MARK: - Extension for TextField

extension TextField {
    func setRow(keyboardType: UIKeyboardType = .default) -> some View {
        self.modifier(RowTextField(keyboardType: keyboardType))
    }
}
