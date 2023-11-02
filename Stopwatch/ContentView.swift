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
                    Group{
                        HStack{
                            Text("Lap 5")
                            Spacer()
                            Text("00:04:61")
                        }
                        
                        HStack{
                            Text("Lap 4")
                            Spacer()
                            Text("00:02:22")
                        }
                            .foregroundStyle(Color("Dark Red"))
                        
                        HStack{
                            Text("Lap 3")
                            Spacer()
                            Text("00:01:88")
                        }
                            .foregroundStyle(Color("Light Green"))
                        
                        HStack{
                            Text("Lap 2")
                            Spacer()
                            Text("00:01:67")
                        }
                        
                        HStack{
                            Text("Lap 1")
                            Spacer()
                            Text("00:00:98")
                        }
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
