//
//  ContentView.swift
//  SrikantCard
//
//  Created by Sumi on 02/09/20.
//  Copyright © 2020 Sumi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.29, blue: 0.37).edgesIgnoringSafeArea(.all)
            VStack {
                Image("profileImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit).frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                Text("Srikant Jena")
                    .font(Font.custom("Monoton-Regular", size: 34))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.white)
                Divider()
                CustomButtonView(text: "09481874462", icon: "phone.fill")
                CustomButtonView(text: "srikant1124@gmail.com", icon: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone Xs"))
    }
}
