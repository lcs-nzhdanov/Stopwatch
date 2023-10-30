//
//  ContentView.swift
//  Stopwatch
//
//  Created by Nikita Zhdanov on 2023-10-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text("00:06:67")
                    .font(Font.system(size: 90, weight: .thin))
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
