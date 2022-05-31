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
                        .foregroundStyle(.linearGradient(colors: [.purple, .black], startPoint: .topLeading, endPoint: .bottomTrailing))
                    Text("All of the Elixirs in the Wizarding World")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.secondary)
                }
                .padding(.all)
                .frame(height: 150)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                .shadow(color: Color("Shadow").opacity(0.5), radius: 5, x: 0, y: 2.5)
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
                        .foregroundStyle(.linearGradient(colors: [.gray, .black], startPoint: .topLeading, endPoint: .bottomTrailing))
                    Text("All of the Houses in the Wizarding World")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.secondary)
                }
                .padding(.all)
                .frame(height: 150)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                .shadow(color: Color("Shadow").opacity(0.5), radius: 5, x: 0, y: 2.5)
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
                        .foregroundStyle(.linearGradient(colors: [.brown, .black], startPoint: .topLeading, endPoint: .bottomTrailing))
                    Text("All of the Wizards in the Wizarding World")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundColor(.secondary)
                }
                .padding(.all)
                .frame(height: 150)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
                .shadow(color: Color("Shadow").opacity(0.5), radius: 5, x: 0, y: 2.5)
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
