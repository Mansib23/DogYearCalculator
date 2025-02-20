//
//  ContentView.swift
//  DogYearCalculator
//
//  Created by Mansib Ahmed on 20/2/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var age = 0.0
    
    func calculateDogAge() -> Double {
    
        return age*7
    }
    
    var body: some View {
        VStack {
            
            
            switch age {
                case 0...15:
                Text("🐶")
                    .font(  .system(size: 72, weight: .bold, design: .default))
            case 16...25:
            Text("😇")
                    .font(  .system(size: 72, weight: .bold, design: .default))
                
            default:
                Text("😱")
                    .font(  .system(size: 72, weight: .bold, design: .default))
            }
                
            Text("Dog Year Calculator!")
                .font(.title)
                .fontDesign(.rounded)
                .fontWeight(.bold)
            
            Slider(value: $age, in: 0...25)
            
            Text("My Age : \(Int(age)) years old")
                .font(.title2)
                
            
            Text("Dog Age \(Int(calculateDogAge())) years old")
                .font(.title2)
            
            

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
