//
//  WelcomePage.swift
//  ChatPrototype
//
//  Created by yuxiang on 2025/7/30.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)

                Image(systemName: "figure.2.and.child.holdinghands")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
            }

            Text("Welcome to My App")
                .font(.title) // type inference
                .fontWeight(.semibold)
                .padding(.top)
                .border(.black, width: 1.5)

            Text("Description text")
                .font(.title2)
                .border(.green, width: 1.5)
        }
        .border(.orange, width: 1.5)
        .padding()
        .border(.purple, width: 1.5)
    }
}

#Preview {
    WelcomePage()
}
