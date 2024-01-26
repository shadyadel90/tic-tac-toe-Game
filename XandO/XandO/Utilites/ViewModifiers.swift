//
//  ViewModifiers.swift
//  XandO
//
//  Created by Shady Adel on 26/01/2024.
//

import SwiftUI

struct NavigationStackContainer: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 16.0, *){
            NavigationStack{
                content
            }
        }
        else {
            NavigationView {
                content
            }
            .navigationViewStyle(.stack)
        }
    }
}

extension View {
    func inNavigationStack() -> some View {
        return self.modifier(NavigationStackContainer())
    }
}
