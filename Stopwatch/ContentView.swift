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
                
                
                HStack {
                    Spacer()
                    
                    CircleButtonPreview(buttonColor: Color.gray, label: "Reset", labelColor: Color.white)
                    
                    Spacer(minLength: 150)
                    
                    CircleButtonPreview(buttonColor: Color.green, label: "Start", labelColor: Color.white)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
