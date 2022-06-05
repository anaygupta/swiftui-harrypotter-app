//
//  Styles.swift
//  swiftui-harrypotter-app
//
//  Created by Anay on 6/4/22.
//

import SwiftUI

struct CardStyle: ViewModifier {
    
    // use environment settings of your app
    // @Environment(\.colorScheme) var colorScheme
    
    func body(content: Content) -> some View {
        content
            .padding(.all)
            .frame(height: 150)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
            .shadow(color: Color("Shadow").opacity(0.5), radius: 5, x: 0, y: 2.5)
    }
}

struct CardTextStyle: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    
    // change text colors based on light or dark mode
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.linearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}


// can create a view that utilizes CardStyle so we don't have to use .modifier(CardStyle())
extension View {
    func cardStyle() -> some View {
        modifier(CardStyle())
    }
}
