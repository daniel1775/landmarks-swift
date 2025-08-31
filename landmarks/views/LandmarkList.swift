//
//  LandmarkList.swift
//  landmarks
//
//  Created by Daniel on 27/08/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
        }
    }
}

#Preview {
    LandmarkList()
}
