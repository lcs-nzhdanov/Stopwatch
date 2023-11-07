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

                    
                    CircleButtonPreview(buttonColor: Color("Dark Grey"), label: "Reset", labelColor: Color("Light Grey"))
                    
                    Spacer()
                    
                    HStack {
                        Circle()
                            .fill(Color("Middle Grey"))
                            .frame(width: 7.5)
                        Circle()
                            .fill(Color("Grey"))
                            .frame(width: 7.5)
                    }
                    
                   Spacer()
                    
                    CircleButtonPreview(buttonColor: Color("Dark Green"), label: "Start", labelColor: Color("Light Green"))
                }
                .frame(height: 100)
                
                List {
                    Group{
                        ListItemView(time: "00:04:61", lap: "Lap 5", color: .white)
                        
                        ListItemView(time: "00:02:22", lap: "Lap 4", color: Color("Dark Red"))
                        
                        ListItemView(time: "00:01:88", lap: "Lap 3", color: Color("Light Green"))
                        
                        ListItemView(time: "00:01:67", lap: "Lap 2", color: .white)
                        
                        ListItemView(time: "00:00:98", lap: "Lap 1", color: .white)
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .font(.system(size: 20))
                    .frame(height: 55)
                }
                .frame(height: 300)
                .listStyle(.plain)

            }
            .padding()
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
