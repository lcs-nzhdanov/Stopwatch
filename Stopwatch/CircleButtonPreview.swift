//
//  CircleButtonPrevie.swift
//  Stopwatch
//
//  Created by Nikita Zhdanov on 2023-10-30.
//

import SwiftUI

struct CircleButtonPreview: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.gray)
            .frame(width: 100)
            
            Circle()
                .foregroundColor(.black)
            .frame(width: 95)
            
            Circle()
                .foregroundColor(.gray)
            .frame(width: 90)
            
            Text("")
                .foregroundStyle(.white)
                .font(.title2)
        }
    }
}

#Preview {
    CircleButtonPreview()
}
