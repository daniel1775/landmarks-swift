//
//  CircleImage.swift
//  landmarks
//
//  Created by Daniel on 23/08/25.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("jungle")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay {
                return Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
