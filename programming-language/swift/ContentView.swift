//
//  ContentView.swift
//  ChatPrototype
//
//  Created by yuxiang on 2025/7/29.
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom,
]

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
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
            }
        }
        .padding()
        .background(Gradient(colors: gradientColors))
    }
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int

    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }

    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }

    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .frame(maxHeight: .infinity)
}
