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
 //   ContentView()
    TabView {
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
        
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
    }
    .accentColor(.blue)
    .preferredColorScheme(.dark)
}
