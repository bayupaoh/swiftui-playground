//
//  ContentView.swift
//  basic animate swiftui
//
//  Created by Bayu Paoh on 06/11/19.
//  Copyright © 2019 Bayu Paoh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        VStack(spacing: 12.0) {
            Text("Learning Swift UI")
                .font(.system(size: 30.0))
                .fontWeight(.bold)
            
            Image("image")
                .frame(width: show ? 400.0 : 300.0, height: show ? 300.0 : 200.0)
                .clipped()
                .cornerRadius(show ? 0 :
                    30.0)
                .shadow(radius: 30.0)
                .blur(radius: show ? 0 : 30)
            
            Text(show ? "Bayu Paoh" : "Guess this guy")
                .font(.system(size: 16.0))
                .fontWeight(.regular)
                .foregroundColor(Color.gray)
                .animation(.spring())
            
            Button(action: {
                withAnimation {
                    self.show.toggle()
                }
            }) {
                Text("Click Me To Show The Guy")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
