//
//  InformationView.swift
//  Shut the Box
//
//  Created by Daniel Coyle on 3/18/24.
//

import SwiftUI

struct InformationView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        ScrollView{
            VStack{
                ZStack{
                    Text("How To Play")
                        .font(.title)
                        .underline()
                    HStack{
                        Spacer()
                        Button{
                            dismiss()
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.title)
                                .foregroundStyle(.black)
                        }
                    }
                }
                VStack(alignment: .leading){
                    Text(" - Start by rolling the dice")
                    Text(" - After rolling, the roll amount will appear in the top right of the box")
                    Text(" - In order to roll again, you must select numbers that total to that amount and the roll amount must show 0")
                    Text(" - For Example: If you roll a 10")
                    Text(" - You can select the number 10, or you can select 8 & 2, or you can select 6, 3, & 1.")
                    Text(" - However you can get to the roll amount with the numbers left available")
                    Text(" - After using a number, you will no longer have access to that number")
                }
                
                Spacer()
                Text("How To Win")
                    .font(.title)
                    .underline()
                VStack(alignment: .leading) {
                    Text(" - In order to win you must Shut the Box")
                    Text(" - To Shut the Box, you must tap all the numbers 1-12")
                    Text(" - If you roll an amount and can no longer make any moves, the Total Score is your final score.")
                    Text("- If you manage to use all of the numbers . . . YOU WIN!!! The total score will show 78!!")
                    Text(" - Can you do that twice in a row?")
                }
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    InformationView()
}
