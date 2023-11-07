//
//  ListItemView.swift
//  Stopwatch
//
//  Created by Nikita Zhdanov on 2023-11-06.
//

import SwiftUI

struct ListItemView: View {
    
    let time: String
    let lap: String
    let color: Color
    
    var body: some View {
        HStack {
            Text(lap)
            Spacer()
            Text(time)
        }
            .foregroundStyle(color)
    }
}

#Preview {
    ListItemView(time: "00:02:22", lap: "Lap 4", color: Color("Dark Red"))
}
