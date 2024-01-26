//
//  GameView.swift
//  XandO
//
//  Created by Shady Adel on 26/01/2024.
//

import SwiftUI

struct GameView: View {
    @Environment (\.dismiss) var dismiss
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("End Game") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .navigationTitle("Xs and Os")
        .inNavigationStack()
    }
}

#Preview {
    GameView()
}
