//
//  ContentView.swift
//  landmarks
//
//  Created by fpena on 20/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle rock")
                .font(.title)
                .foregroundColor(Color.black)
            HStack() {
                Text("Joshua Tree National Par")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
