//
//  LandmarkList.swift
//  landmarks
//
//  Created by Daniel on 27/08/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
