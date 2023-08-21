//
//  InfoView.swift
//  Mikhail_Card
//
//  Created by Михаил Кузнецов on 04.07.2023.
//

import SwiftUI

struct InfoView : View {
    let text : String
    let imageName : String
    var body: some View {
        RoundedRectangle(cornerRadius: 30).frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName ).foregroundColor(.accentColor)
                Text(text).font(.system(size: 18))
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text : "Hello", imageName: "phone.circle").previewLayout(.sizeThatFits)
    }
}
