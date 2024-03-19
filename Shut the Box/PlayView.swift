//
//  PlayView.swift
//  Shut the Box
//
//  Created by Daniel Coyle on 3/18/24.
//

import SwiftUI

struct PlayView: View {
    
    @Environment(\.dismiss) private var dismiss

    @State var diceRoll = 0
    
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
                    // TODO: Change Number to Off and do not allow click
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                            .border(.black, width: 2)
                        Text("1")
                            .font(.title)
                            .foregroundStyle(.black)
                    }
                }
                Button {
                    // TODO: Change Number to Off and do not allow click
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                            .border(.black, width: 2)
                        Text("2")
                            .font(.title)
                            .foregroundStyle(.black)
                    }
                }
                Button {
                    // TODO: Change Number to Off and do not allow click
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                            .border(.black, width: 2)
                        Text("3")
                            .font(.title)
                            .foregroundStyle(.black)
                    }
                }
                Button {
                    // TODO: Change Number to Off and do not allow click
                } label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                            .border(.black, width: 2)
                        Text("4")
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
                
                Button {
                    // TODO: Roll Dice
                } label: {
                    Text("Roll Dice")
                        .font(.largeTitle)
                }
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Roll Amount: \(diceRoll)")
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
