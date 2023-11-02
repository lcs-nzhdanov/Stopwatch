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
                    
                    CircleButtonPreview(buttonColor: Color("Dark Grey"), label: "Reset", labelColor: Color("Light Grey"))
                    
                    Spacer(minLength: 150)
                    
                    CircleButtonPreview(buttonColor: Color("Dark Green"), label: "Start", labelColor: Color("Light Green"))
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
