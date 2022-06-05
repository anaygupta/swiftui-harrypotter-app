//
//  ContentView.swift
//  swiftui-harrypotter-app
//
//  Created by Anay on 5/29/22.2
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(spacing: 20.0) {
//                Text("The Wizarding World")
//                    .font(.largeTitle)
//                    .padding(.all)
//
//                Spacer()
                
                // Elixirs
                VStack(alignment: .leading, spacing: 5.0) {
                    Spacer()
                    Text("Elixirs")
                        .font(.title)
                        .modifier(CardTextStyle())
                    Text("All of the Elixirs in the Wizarding World")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.secondary)
                }
                // .modifier(CardStyle())
                .cardStyle()
                .padding(.horizontal, 20)
                .background(
                    Image("Blob 1")
                        .offset(x:250, y: -100))
                .overlay(
                    Image("Illustration 12")
                        // take all available space
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 75)
                        .offset(x: 130, y: -20)
                )
                
                // Houses
                VStack(alignment: .leading, spacing: 5.0) {
                    Spacer()
                    Text("Houses")
                        .font(.title)
                        .modifier(CardTextStyle())
                    Text("All of the Houses in the Wizarding World")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.secondary)
                }
                .cardStyle()
                .padding(.horizontal, 20)
                .overlay(
                    Image("Illustration 13")
                        // take all available space
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 75)
                        .offset(x: 120, y: -20)
                )
                
                
                // Wizards
                VStack(alignment: .leading, spacing: 5.0) {
                    Spacer()
                    Text("Wizards")
                        .font(.title)
                        .modifier(CardTextStyle())
                    Text("All of the Wizards in the Wizarding World")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.secondary)
                }
                .cardStyle()
                .padding(.horizontal, 20)
                .overlay(
                    Image("Illustration 14")
                        // take all available space
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 75)
                        .offset(x: 120, y: -20)
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
