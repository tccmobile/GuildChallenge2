//
//  ContentView.swift
//  GuildChallenge2
//
//  Created by William Smith on 11/29/19.
//  Copyright © 2019 William Smith. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var userInput: String = ""
       @State var result: Double = 0.0
    @State var pickerValue: Int = 1
       
       var body: some View {
           VStack{
               Spacer()
           TextField("Enter a tempurature", text: $userInput)
            
            Picker(selection: //variable to get picker selection, label: //prompt) {
                // 2 text statement for choices with tags
            }.pickerStyle(SegmentedPickerStyle())
               Button(action: {// call function}) {
                   Text("Convert")
               }
               Spacer()
            Text("The converted temp is: \(result)")
               Spacer()
           }.padding(40)
       }
       
       func convertTemp() {
           var tempToConvert: Double
           tempToConvert = Double(userInput)!
           
       // If else to choose formula based on picker selection
            result = (tempToConvert - 32.0) * (5.0/9.0)
      
            result = (tempToConvert * (9.0/5.0)) + 32
       
           
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
