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
    @Environment(\.undoManager) private var undoManager
    @State var audioPlayer: AVAudioPlayer?
    
    @State var firstDice = 0
    @State var secondDice = 0
    @State var rollAmount = 0
    @State var totalScore = 0
    
    @State var previousTotalScore = 0
    @State var previousRollAmount = 0
    @State var previousButtonNumber = "1"
    @State var previousButton = 0
    @State var firstRoll = 0
    @State var diceRoll = false
    
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
    
    @State private var restartAlert = false
    @State private var backAlert = false
    @State private var showSheet = false
    @State private var undo = false
    
    
    var body: some View {
        
        VStack{
            ZStack{
                Text("Shut This Box")
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
                    Button {
                        // UNDO BUTTON
                        // Store previous values for total score, roll amount, and button clicked
                        // Capture new values every time a button is clicked
                        // Keep Track of Which Button Was Tapped
                        if firstRoll != 1 && rollAmount != 0 && diceRoll == false {
                            totalScore = previousTotalScore
                            rollAmount = previousRollAmount
                            
                            if previousButton == 1 {
                                buttonOne = previousButtonNumber
                            }
                            if previousButton == 2 {
                                buttonTwo = previousButtonNumber
                            }
                            if previousButton == 3 {
                                buttonThree = previousButtonNumber
                            }
                            if previousButton == 4 {
                                buttonFour = previousButtonNumber
                            }
                            if previousButton == 5 {
                                buttonFive = previousButtonNumber
                            }
                            if previousButton == 6 {
                                buttonSix = previousButtonNumber
                            }
                            if previousButton == 7 {
                                buttonSeven = previousButtonNumber
                            }
                            if previousButton == 8 {
                                buttonEight = previousButtonNumber
                            }
                            if previousButton == 9 {
                                buttonNine = previousButtonNumber
                            }
                            if previousButton == 10 {
                                buttonTen = previousButtonNumber
                            }
                            if previousButton == 11 {
                                buttonEleven = previousButtonNumber
                            }
                            if previousButton == 12 {
                                buttonTwelve = previousButtonNumber
                            }
                        }
                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(width: 80, height: 30)
                                .clipShape(RoundedRectangle(cornerRadius: 110))
                                .foregroundStyle(.yellow)
                            Text("Undo")
                                .foregroundStyle(.black)
                                .fontWeight(.semibold)
                        }
                    }
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
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonOne
                    previousButton = 1
                    
                    if rollAmount == 0 || buttonOne == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 1 {
                        rollAmount -= 1
                        buttonOne = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                        totalScore += 1
                    }
                    
                } label: {
                    BoxButtonStyleView(boxNumber: buttonOne)
                }
                // Button 2
                Button {
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonTwo
                    previousButton = 2
                    
                    if rollAmount == 0 || buttonTwo == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 2 {
                        rollAmount -= 2
                        buttonTwo = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                        totalScore += 2
                    }
                    
                } label: {
                    BoxButtonStyleView(boxNumber: buttonTwo)
                }
                // Button 3
                Button {
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonThree
                    previousButton = 3
                    
                    if rollAmount == 0 || buttonThree == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 3 {
                        rollAmount -= 3
                        buttonThree = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                        totalScore += 3
                    }
                    
                } label: {
                    BoxButtonStyleView(boxNumber: buttonThree)
                }
                // Button 4
                Button {
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonFour
                    previousButton = 4
                    
                    if rollAmount == 0 || buttonFour == "X" {
                        return
                    }
                    
                    // Subtract from roll amount
                    if rollAmount >= 4 {
                        rollAmount -= 4
                        buttonFour = "X"
                        shutBoxSound()
                        audioPlayer?.play()
                        totalScore += 4
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonFour)
                }
                // Button 5
                Button {
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonFive
                    previousButton = 5
                    
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
                        totalScore += 5
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonFive)
                }
                // Button 6
                Button {
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonSix
                    previousButton = 6
                    
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
                        totalScore += 6
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonSix)
                }
                // Button 7
                Button {
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonSeven
                    previousButton = 7
                    
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
                        totalScore += 7
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonSeven)
                }
                // Button 8
                Button {
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonEight
                    previousButton = 8
                    
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
                        totalScore += 8
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonEight)
                }
                // Button 9
                Button {
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonNine
                    previousButton = 9
                    
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
                        totalScore += 9
                    }
                    
                } label: {
                    BoxButtonStyleView(boxNumber: buttonNine)
                }
                // Button 10
                Button {
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonTen
                    previousButton = 10
                    
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
                        totalScore += 10
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonTen)
                }
                // Button 11
                Button {
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonEleven
                    previousButton = 11
                    
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
                        totalScore += 11
                    }
                } label: {
                    BoxButtonStyleView(boxNumber: buttonEleven)
                }
                // Button 12
                Button {
                    diceRoll = false
                    firstRoll += 1
                    previousTotalScore = totalScore
                    previousRollAmount = rollAmount
                    previousButtonNumber = buttonTwelve
                    previousButton = 12
                    
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
                        totalScore += 12
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
                
                if totalScore == 78 {
                    
                    VStack {
                        Text("Congrats You Shut The Box!!!")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                        Text("To Play Again Click Restart -->")
                    }
                    
                    
                }
                
                if totalScore < 78 {
                    VStack{
                        HStack{
                            Image("dice\(firstDice)")
                            Image("dice\(secondDice)")
                        }
                        
                        Button {
                            firstRoll += 1
                            diceRoll = true
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
                }
                
                HStack{
                    VStack{
                        Text("Total Score:")
                        Text(String(totalScore))
                        Spacer()
                    }
                    .font(.title)
                    .foregroundStyle(.white)
                    
                    Spacer()
                }
                .padding(30)
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Roll Amount: \(rollAmount)")
                        Spacer()
                    }
                }
                .padding(30)
                
                // Restart the Game
                HStack{
                    Spacer()
                    VStack{
                        Spacer()
                        Button {
                            restartAlert = true
                        } label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 80, height: 30)
                                    .clipShape(RoundedRectangle(cornerRadius: 110))
                                    .foregroundStyle(.gray)
                                
                                Text("Restart")
                                    .foregroundStyle(.white)
                                    .fontWeight(.semibold)
                            }
                        }
                        
                        .alert("Are you sure you want to restart?", isPresented: $restartAlert) {
                            Button {
                                withAnimation {
                                    buttonOne = "1"
                                    buttonTwo = "2"
                                    buttonThree = "3"
                                    buttonFour = "4"
                                    buttonFive = "5"
                                    buttonSix = "6"
                                    buttonSeven = "7"
                                    buttonEight = "8"
                                    buttonNine = "9"
                                    buttonTen = "10"
                                    buttonEleven = "11"
                                    buttonTwelve = "12"
                                    totalScore = 0
                                    rollAmount = 0
                                    firstDice = 0
                                    secondDice = 0
                                    firstRoll = 0
                                }
                            } label: {
                                Text("Restart")
                            }
                            Button {
                            } label: {
                                Text("Continue Playing")
                            }
                        }
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
        .onAppear {
            audioPlayer?.pause()
        }
        
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
