//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Ngo Van Nam on 07/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Delete button tapped!")
        }) {
            HStack{
                Image(systemName: "trash")
                    .font(.title)
                Text("Delete")
                    .fontWeight(.semibold)
                    .font(.title)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .cornerRadius(40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
