//
//  ButtonNumberView.swift
//  Shut the Box
//
//  Created by Daniel Coyle on 3/19/24.
//

import SwiftUI

struct ButtonNumberView: View {
    
    @State var boxNumber:String
    var number:Int
    @State var rollAmount:Int
    
    var body: some View {
        
        // MARK: Still Not Working
        Button {
            if rollAmount == 0 || boxNumber == "X" {
                return
            }
            
            // Subtract from roll amount
            if rollAmount >= number {
                rollAmount -= number
                boxNumber = "X"
            }
        } label: {
            ZStack{
                Rectangle()
                    .frame(width: 60, height: 60)
                    .foregroundStyle(.white)
                    .border(.black, width: 2)
                Text(boxNumber)
                    .font(.title)
                    .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    ButtonNumberView(boxNumber: "2", number: 2, rollAmount: 10)
}
