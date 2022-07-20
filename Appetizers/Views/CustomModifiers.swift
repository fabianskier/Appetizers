//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Oscar Cristaldo on 2022-07-19.
//

import SwiftUI

struct StandarButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
