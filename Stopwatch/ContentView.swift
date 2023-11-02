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
                Spacer()
                
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
                
                List {
                    Text("1")
                    Text("2")
                    Text("3")
                    Text("4")
                    Text("5")
                }
                .frame(height: 300)
            }
        }
    }
}

#Preview {
 //   ContentView()
    TabView(selection: Binding.constant(3)) {
        
        Text("World Clock")
            .tabItem {
                Image(systemName: "globe")
                Text("World Clock")
            }
            .tag(1)
        
        Text("Alarm")
            .tabItem {
                Image(systemName: "alarm.fill")
                Text("Alarm")
            }
            .tag(2)
        
        ContentView()
            .tabItem {
                Image(systemName: "stopwatch.fill")
                Text("Stopwatch")
            }
            .tag(3)
        
        Text("Timer")
            .tabItem {
                Image(systemName: "timer")
                Text("Timer")
            }
            .tag(4)
    }
    .accentColor(.blue)
    .preferredColorScheme(.dark)
}
