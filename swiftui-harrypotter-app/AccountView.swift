//
//  AccountView.swift
//  swiftui-harrypotter-app
//
//  Created by Anay on 6/4/22.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            List {
                VStack {
                    Image(systemName: "person")
                        .symbolVariant(.circle.fill)
                        .font(.system(size: 24))
                    // renders symbols as multiple layers, with different styles applied to the layers
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.purple, .black)
                        .padding()
                        .background(
                            Circle().fill(.ultraThinMaterial)
                        )
                        .background(
                            Image(systemName: "hexagon")
                                .symbolVariant(.fill)
                                .foregroundColor(.purple)
                                .font(.system(size: 200))
                                .offset(y: -75)
                        )
                    VStack(spacing: 5.0) {
                        Text("Anay Gupta")
                            .font(.title.weight(.semibold))
                        
                        HStack {
                            Image(systemName: "location")
                            Text("Phoenix, AZ")
                                .foregroundColor(.secondary)
                        }
                        
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom)
                
                Section {
                    
                    NavigationLink {
                        ContentView()
                    } label: {
                        // by default will use accent color set in assets
                        Label("Home", systemImage: "house")
                    }
                    
                    NavigationLink {
                        Text("Settings page")
                    } label: {
                        // by default will use accent color set in assets
                        Label("Settings", systemImage: "gear")
                    }
                    
                    NavigationLink {
                        Text("Billing page")
                    } label: {
                        Label("About", systemImage: "info")
                    }
                    
                    NavigationLink {
                        Text("Help page")
                    } label: {
                        Label("Help", systemImage: "questionmark")
                    }
                }
                .accentColor(.purple)
                // .listRowSeparatorTint(.blue)
                
                
                Section {
                    // optionals: add exclamation mark to indicate that you are sure good it is a value (look at optional docs)
                    Link(destination: URL(string: "https://apple.com")!) {
                        Label("Website", systemImage: "link")
                            .accentColor(.purple)
                    }
                }
                
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AccountView()
                .preferredColorScheme(.dark)
                .previewInterfaceOrientation(.portraitUpsideDown)
            AccountView()
                .preferredColorScheme(.dark)
                .previewInterfaceOrientation(.landscapeLeft)
        }
        
    }
}
