//
//  ContentView.swift
//  State-Demo
//
//  Created by ds-mayur on 9/2/19.
//  Copyright © 2019 Mayur Rathod. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var name = "Mayur"
    
    var body: some View {
        //Vertical Stack
        VStack {
            
            //Text or label of the name
            Text(name)
                .font(.largeTitle)  // Font type
            
            
            Button(action : {
                /*
                 - When user clicks on the button this block will be executed
                 - When user click on the button  View will rendered again since we are changing or mutating the @State variabl value
                */
                self.name = "Rathod"
            }){
                //Button Text Properties
                Text("Chnage Name") // Button Text
                    .fontWeight(.heavy) // Button Text Weight
                    .padding()          // Padding to the button
                    .background(Color.orange)   // Button Background Color
                    .foregroundColor(Color.white)   // Button text color
                    .cornerRadius(10.0) // Button corner radius property
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
