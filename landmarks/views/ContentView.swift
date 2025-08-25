//
//  ContentView.swift
//  landmarks
//
//  Created by fpena on 20/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -120)
                .padding(.bottom, -120)
            VStack(alignment: .leading) {
                Text("Turtle rock")
                    .font(.title)
                    .foregroundColor(Color.black)
                HStack() {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About turtle rock")
                    .font(.title2)
                Text("Amazing please you can visit in family")
                    .foregroundStyle(.secondary)
            }
            .padding()
            
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
