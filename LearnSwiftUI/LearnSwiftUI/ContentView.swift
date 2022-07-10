//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Ngo Van Nam on 07/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter1 = 0
    @State private var counter2 = 0
    @State private var counter3 = 0
    @State private var counterSum = 0
    
    var body: some View {
        VStack {
            Text("\(counterSum)")
                .font(.system(size: 100))
            .fontWeight(.bold)
            HStack {
                CounterButton(counter: $counter1, counterSum: $counterSum, color: .blue)
                    .frame(width: 100, height: 100)
                CounterButton(counter: $counter2, counterSum: $counterSum, color: .green)
                    .frame(width: 100, height: 100)
                CounterButton(counter: $counter3, counterSum: $counterSum, color: .red)
                    .frame(width: 100, height: 100)
            }
        }
        /*VStack {
            CounterButton(counter: $counter, color: .blue)
            CounterButton(counter: $counter, color: .green)
            CounterButton(counter: $counter, color: .red)
        }
        */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CounterButton: View{
    
    @Binding var counter: Int
    @Binding var counterSum: Int
    
    var color: Color
    
    var body: some View{
        Button(action: {
            self.counter += 1
            self.counterSum += 1
        }){
            Circle()
                .foregroundColor(color)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size: 80, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                )
        }
    }
}

