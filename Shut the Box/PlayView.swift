//
//  PlayView.swift
//  Shut the Box
//
//  Created by Daniel Coyle on 3/18/24.
//

import SwiftUI

struct PlayView: View {
    
    @Environment(\.dismiss) private var dismiss

    @State var firstDice = 0
    @State var secondDice = 0
    @State var rollAmount = 0
    
    @State var buttonOne = "1"
    @State var buttonTwo = "2"
    @State var buttonThree = "3"
    @State var buttonFour = "4"

    
    @State private var backAlert = false
    @State private var showSheet = false

    
    var body: some View {
        
        VStack{
            
            ZStack{
                Text("Shut the Box")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                
                // Go Back
                HStack{
                    Button{
                        // Go Back One Page
                        backAlert = true
                    }label: {
                        Image(systemName: "arrowshape.backward.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.black)
                    }
                    .alert("Are you sure you want to go back?", isPresented: $backAlert) {
                        Button{
                            dismiss()
                        }label: {
                            Text("Go Back")
                        }
                        Button{
                            
                        }label: {
                            Text("Continue Playing")
                        }
                    }
                    Spacer()
                }
                .padding()
                
                // How to Play
                HStack{
                    Spacer()
                    Button{
                        // Display InformationView Modally
                        showSheet = true
                    }label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.black)
                    }
                }
                .padding()
                
            }
            Spacer()
            HStack{
                Button {
                    // Disable Button After Tapped Once
                    if rollAmount == 0 || buttonOne == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 1 {
                        rollAmount -= 1
                    }
                    
                    // Set Button To Off
                    buttonOne = "X"
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                            .border(.black, width: 2)
                        Text(buttonOne)
                            .font(.title)
                            .foregroundStyle(.black)
                    }
                }
                Button {
                    if rollAmount == 0 || buttonTwo == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 2 {
                        rollAmount -= 2
                    }
                    
                    buttonTwo = "X"
                    
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                            .border(.black, width: 2)
                        Text(buttonTwo)
                            .font(.title)
                            .foregroundStyle(.black)
                    }
                }
                Button {
                    if rollAmount == 0 || buttonThree == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 3 {
                        rollAmount -= 3
                    }
                
                    buttonThree = "X"
                    
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                            .border(.black, width: 2)
                        Text(buttonThree)
                            .font(.title)
                            .foregroundStyle(.black)
                    }
                }
                Button {
                    if rollAmount == 0 || buttonFour == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 4 {
                        rollAmount -= 4
                    }
                    
                    buttonFour = "X"
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                            .border(.black, width: 2)
                        Text(buttonFour)
                            .font(.title)
                            .foregroundStyle(.black)
                    }
                }
            }
            Spacer()
            
            ZStack{
                Rectangle()
                    .frame(width: 750, height: 225)
                    .foregroundStyle(.brown)
                Rectangle()
                    .frame(width: 700, height: 185)
                    .foregroundStyle(.green)
                
                VStack{
                    HStack{
                        Image("dice\(firstDice)")
                        Image("dice\(secondDice)")
                    }
                    
                    Button {
                        // Roll Dice
                        if rollAmount == 0 {
                            withAnimation {
                                firstDice = Int.random(in: 1...6)
                                secondDice = Int.random(in: 1...6)
                            }
                            
                            rollAmount = firstDice + secondDice
                        }
                                                
                        // TODO: After Roll, Cannot roll again until roll amount == 0
                        
                        // TODO: Add Sound
                        
                    } label: {
                        Text("Roll Dice")
                            .font(.largeTitle)
                    }
                }
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Roll Amount: \(rollAmount)")
                        Spacer()
                    }
                }
                .padding(30)
                

                
            }
        }
        .padding(.top, 25)
        .padding(.bottom, 10)
        .background(Image("background-wood-cartoon"))
        .toolbar(.hidden, for: .navigationBar)
        .sheet(isPresented: $showSheet, content: {
            InformationView()
        })
    }
}

#Preview {
    PlayView()
}
