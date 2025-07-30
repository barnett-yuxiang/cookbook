//
//  ContentView.swift
//  ChatPrototype
//
//  Created by yuxiang on 2025/7/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
            Text("Knock, knock!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 5)
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 2)
            HStack {
                Text("Start")
                    .padding()
                    .background(Color.yellow, in: RoundedRectangle(cornerRadius: 2))
                    .shadow(radius: 1)
                Text("MyselfInSixWords")
                    .padding()
                    .background(Color.yellow, in: RoundedRectangle(cornerRadius: 4))
                    .shadow(radius: 3)
                Text("layouts")
                    .padding()
                    .background(Color.yellow, in: RoundedRectangle(cornerRadius: 6))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
