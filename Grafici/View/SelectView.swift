//
//  SelectView.swift
//  Grafici
//
//  Created by Michele on 18/01/21.
//

import SwiftUI

struct SelectView: View {
    var text : String
    var color : Color
    var body: some View {
        Text(text)
            .bold()
            .frame(width: 200, height: 50, alignment: .center)
            .background(color)
            .foregroundColor(.black)
            .multilineTextAlignment(.center)
            .cornerRadius(20)
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView(text: "Ciao", color: Color.red)
    }
}
