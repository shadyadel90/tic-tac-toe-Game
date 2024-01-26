//
//  ContentView.swift
//  XandO
//
//  Created by Shady Adel on 26/01/2024.
//

import SwiftUI

struct StartView: View {
    @State private var gameType: GameType = .undetermined
    @State private var yourName = ""
    @State private var opponentName = ""
    @FocusState private var focus: Bool
    
    var body: some View {
        VStack {
            Picker("Select your Game Type", selection: $gameType) {
                Text ("Select Game Type").tag (GameType.undetermined)
                Text ("Two Sharing device").tag (GameType.single)
                Text ("Challenge your device").tag(GameType.bot)
                Text ("Challenge a friend").tag(GameType.peer)
            }
            .background(RoundedRectangle(cornerRadius: 10,style: .continuous).stroke(style: StrokeStyle(lineWidth: 2)))
            .tint(.purple)
            Text(gameType.description).padding()
            VStack
            {
                switch gameType {
                case .single:
                    VStack{
                        TextField("Your Name", text: $yourName)
                    }
                case .bot:
                    VStack{
                        TextField("Your Name", text: $yourName)
                        TextField("Opponent Name", text: $opponentName)
                    }
                case .peer:
                    EmptyView()
                case .undetermined:
                    EmptyView()
                }
            }
            .padding()
            .textFieldStyle(.roundedBorder)
            .focused($focus)
            .frame(width: 350)
            if gameType != .peer {
                Button("Start Game") {
                    focus = false
                }
                .buttonStyle(.borderedProminent)
                .disabled( gameType == .undetermined ||
                           gameType == .bot && yourName.isEmpty ||
                           gameType == .single &&
                           (yourName.isEmpty || opponentName.isEmpty)
                )
            }
            Spacer()
        }
        .padding()
    }
}
#Preview {
    StartView()
}
