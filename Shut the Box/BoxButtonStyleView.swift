//
//  ButtonNumberView.swift
//  Shut the Box
//
//  Created by Daniel Coyle on 3/19/24.
//

import SwiftUI

struct BoxButtonStyleView: View {
    
    var boxNumber:String
    
    var body: some View {
        
        // Box Button Style
        ZStack{
            Rectangle()
                .frame(width: 60, height: 60)
                .foregroundStyle(.white)
                .border(.black, width: 2)
            Text(boxNumber)
                .font(.title)
                .foregroundStyle(.black)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    BoxButtonStyleView(boxNumber: "2")
}
