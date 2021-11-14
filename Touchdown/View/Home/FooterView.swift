//
//  FooterView.swift
//  Touchdown
//
//  Created by Igor Efimov on 14.11.2021.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment:.center, spacing:10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable footbal helmets in the market in affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Igor Efimov\nAll rights reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
    }
}
