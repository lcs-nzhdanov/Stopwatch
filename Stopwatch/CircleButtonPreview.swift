//
//  CircleButtonPrevie.swift
//  Stopwatch
//
//  Created by Nikita Zhdanov on 2023-10-30.
//

import SwiftUI

struct CircleButtonPreview: View {
    let buttonColor: Color
    let label: String
    let labelColor: Color
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(buttonColor)
            .frame(width: 100)
            
            Circle()
                .foregroundColor(.black)
            .frame(width: 95)
            
            Circle()
                .foregroundColor(buttonColor)
            .frame(width: 90)
            
            Text(label)
                .foregroundStyle(labelColor)
                .font(.title2)
        }
    }
}

#Preview {
    CircleButtonPreview(buttonColor: Color.gray, label: "Preview", labelColor: Color.white)
}
