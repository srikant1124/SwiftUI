//
//  CustomButtonView.swift
//  SrikantCard
//
//  Created by Sumi on 02/09/20.
//  Copyright © 2020 Sumi. All rights reserved.
//

import SwiftUI

struct CustomButtonView: View {
    let text: String
    let icon: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 40)
            .overlay(HStack {
                Image(systemName: icon).foregroundColor(Color(red: 0.20, green: 0.29, blue: 0.37))
                Text(text)
                    .foregroundColor(Color(red: 0.20, green: 0.29, blue: 0.37))
            })
            .padding()
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView(text: "Hello Text", icon: "phone").previewLayout(.sizeThatFits)
    }
}
