//
//  ContentView.swift
//  SwiftUIAssignment
//
//  Created by Macmini-13 on 26/09/2022.
//

import SwiftUI

struct ContentView: View {
    
  @State private var darkMode:Bool = true
    
    var body: some View {
      ZStack {
          LinearGradient(colors: darkMode ? [.blue,.white] : [.black, .gray], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text ("Kathmandu")
                    .font(.system(size: 32,weight: .medium, design: .default ))
                    .foregroundColor( .white)
                    .padding()
                
                VStack (spacing: 50){
                    Image(darkMode ? "rainy": "dark")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 170)
                    
                    Text(darkMode ? "17°C" : "9°C")
                        .font(.system(size: 60, weight: .medium))
                        .foregroundColor(darkMode ? .white : .black)
                    Text("Monday")
                        .foregroundColor(darkMode ? .white : .black)
                }
               Spacer()
                
                Button {
                    darkMode.toggle()
                } label: {
                    Text(darkMode ? "Change to Dark Mode": "Change to Light Mode")
                        .frame(width: 300, height: 50, alignment: .center)
                        .background(Color.white)
                        .font(.system(size: 15, weight: .bold, design: .default))
                        .cornerRadius(3.0)
                        .foregroundColor(.black)
                        
                }
                Spacer()
            }
            
        }
          
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
