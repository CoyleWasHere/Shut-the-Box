//
//  PlayView.swift
//  Shut the Box
//
//  Created by Daniel Coyle on 3/18/24.
//

import SwiftUI
import AVFoundation

struct PlayView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State var audioPlayer: AVAudioPlayer?
    
    @State var firstDice = 0
    @State var secondDice = 0
    @State var rollAmount = 0
    
    @State var buttonOne = "1"
    @State var buttonTwo = "2"
    @State var buttonThree = "3"
    @State var buttonFour = "4"
    @State var buttonFive = "5"
    @State var buttonSix = "6"
    @State var buttonSeven = "7"
    @State var buttonEight = "8"
    @State var buttonNine = "9"
    @State var buttonTen = "10"
    @State var buttonEleven = "11"
    @State var buttonTwelve = "12"
    
    
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
            HStack(spacing: 2){
                
                // Button 1
                Button {
                    if rollAmount == 0 || buttonOne == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 1 {
                        rollAmount -= 1
                        buttonOne = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonOne)
                }
                // Button 2
                Button {
                    if rollAmount == 0 || buttonTwo == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 2 {
                        rollAmount -= 2
                        buttonTwo = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonTwo)
                }
                // Button 3
                Button {
                    if rollAmount == 0 || buttonThree == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 3 {
                        rollAmount -= 3
                        buttonThree = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonThree)
                }
                // Button 4
                Button {
                    if rollAmount == 0 || buttonFour == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 4 {
                        rollAmount -= 4
                        buttonFour = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonFour)
                }
                // Button 5
                Button {
                    // Disable Button After Tapped Once
                    if rollAmount == 0 || buttonFive == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 5 {
                        rollAmount -= 5
                        
                        // Set Button To Off
                        buttonFive = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonFive)
                }
                // Button 6
                Button {
                    // Disable Button After Tapped Once
                    if rollAmount == 0 || buttonSix == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 6 {
                        rollAmount -= 6
                        
                        // Set Button To Off
                        buttonSix = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonSix)
                }
                // Button 7
                Button {
                    // Disable Button After Tapped Once
                    if rollAmount == 0 || buttonSeven == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 7 {
                        rollAmount -= 7
                        
                        // Set Button To Off
                        buttonSeven = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonSeven)
                }
                // Button 8
                Button {
                    // Disable Button After Tapped Once
                    if rollAmount == 0 || buttonEight == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 8 {
                        rollAmount -= 8
                        
                        // Set Button To Off
                        buttonEight = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonEight)
                }
                // Button 9
                Button {
                    // Disable Button After Tapped Once
                    if rollAmount == 0 || buttonNine == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 9 {
                        rollAmount -= 9
                        
                        // Set Button To Off
                        buttonNine = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                    
                } label: {
                    BoxButtonStyleView(boxNumber: buttonNine)
                }
                // Button 10
                Button {
                    // Disable Button After Tapped Once
                    if rollAmount == 0 || buttonTen == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 10 {
                        rollAmount -= 10
                        
                        // Set Button To Off
                        buttonTen = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonTen)
                }
                // Button 11
                Button {
                    // Disable Button After Tapped Once
                    if rollAmount == 0 || buttonEleven == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 11 {
                        rollAmount -= 11
                        
                        // Set Button To Off
                        buttonEleven = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonEleven)
                }
                // Button 12
                Button {
                    // Disable Button After Tapped Once
                    if rollAmount == 0 || buttonTwelve == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 12 {
                        rollAmount -= 12
                        
                        // Set Button To Off
                        buttonTwelve = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonTwelve)
                }
                
                
            }
            Spacer()
            
            ZStack{
                Rectangle()
                    .frame(width: 750, height: 225)
                    .foregroundStyle(.brown)
                Rectangle()
                    .frame(width: 700, height: 185)
                    .foregroundStyle(.orange)
                
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
                            
                            // Add Dice Roll Sound
                            rollDice()
                            audioPlayer?.play()
                        }
                        
                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 200, height: 60)
                                .clipShape(RoundedRectangle(cornerRadius: 110))
                                .foregroundStyle(Color(red: 12/255, green: 234/255, blue: 17/255))
                            
                            Text("Roll Dice")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                                .fontWeight(.semibold)
                        }
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
    
    // MARK: Trying to make button tap reusable
    func shutBox() {
        if rollAmount == 0 || buttonOne == "X" {
            return
        }
        
        // Subtract from roll amount
        if rollAmount >= 1 {
            rollAmount -= 1
            buttonOne = "X"
        }
    }
    
    func rollDice() {
        // Load the audio file
        if let soundURL = Bundle.main.url(forResource: "Rolling Dice", withExtension: "wav") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                audioPlayer?.prepareToPlay()
                audioPlayer?.numberOfLoops = 0 // Play infinitely
            } catch {
                print("Error loading sound file: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found")
        }
    }
    
    func shutBoxSound() {
        // Load the audio file
        if let soundURL = Bundle.main.url(forResource: "Shut Box", withExtension: "mp3") {
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                audioPlayer?.prepareToPlay()
                audioPlayer?.numberOfLoops = 0 // Play infinitely
            } catch {
                print("Error loading sound file: \(error.localizedDescription)")
            }
        } else {
            print("Sound file not found")
        }
    }
}

#Preview {
    PlayView()
}
