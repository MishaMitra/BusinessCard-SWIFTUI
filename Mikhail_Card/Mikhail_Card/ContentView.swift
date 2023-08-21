//
//  ContentView.swift
//  Mikhail_Card
//
//  Created by Михаил Кузнецов on 04.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color (UIColor(red: 0.64, green: 0.61, blue: 1.00, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("mikhail")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white,lineWidth: 3))
                    .padding(.all)

                Text("MIKHAIL  KUZNETSOV")
                    .font(Font.custom("PressStart2P-Regular", size: 30))
                    .bold()
                    .foregroundColor(.white)
                Text("IOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                
                InfoView(text: "Messangers +79057209132", imageName: "phone.circle")
                
                InfoView(text: "michaelmitrasounds@gmail.com", imageName: "mail")
                
                    

            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

