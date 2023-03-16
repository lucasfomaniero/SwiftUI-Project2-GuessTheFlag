//
//  ContentView.swift
//  P2-GuessTheFlag
//
//  Created by Lucas Maniero on 01/03/23.
//

import Foundation
import SwiftUI

struct MainView: View {
    @State private var countries = ["Estonia", "France", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer: Int = Int.random(in: 0...2)
    @State private var isCorrectAnswer: Bool = false
    @State private var incorrectFlag: String = ""
    @State private var presentAlert = false
    @State private var points: Int = 0
    @State private var numberOfRounds: Int = 0
    @State private var endOfGame: Bool = false
    
    var body: some View {
        ZStack{
            AngularGradient(gradient: Gradient(colors: [ .blue, .darkBlue, .purple]), center: .center)
                .ignoresSafeArea()
            Rectangle()
                .ignoresSafeArea()
                .foregroundStyle(.ultraThinMaterial)
                
                
                
            VStack{
                VStack(alignment: .center, spacing: 20) {
                    Text("Tap the flag of: \(countries[correctAnswer])")
                        .font(.largeTitle.weight(.semibold))
                
                    ForEach(0..<3) { number in
                        Button {
                            isCorrectAnswer = checkGivenAnswer(answer: number)
                            presentAlert = true
                        } label: {
                            Image(countries[number])
                                .cornerRadius(4)
                                .shadow(radius: 5)
                        }
                        .alert(isCorrectAnswer ? "Your answer is correct. Points \(points)" : "Wrong! That's the flag of \(incorrectFlag)", isPresented: $presentAlert) {
                            Button("OK") {
                                createNewRound()
                            }
                        }
                        .alert("End of Game. Total of Points: \(points)", isPresented: $endOfGame) {
                            Button("Reset") {
                                resetGame()
                            }
                        }
                        
                        
                    }
                    .multilineTextAlignment(.center)
                }
            }
            
        }
      
    }
    
    func createNewRound() {
        countries.shuffle()
        numberOfRounds += 1
        if numberOfRounds == 8 {
            endOfGame = true
        }
    }
    
    func checkGivenAnswer(answer: Int) -> Bool {
        if answer == correctAnswer {
            points += 1
            return true
        } else {
            incorrectFlag = countries[answer]
        }
        return false
    }
    
    func resetGame() {
        points = 0
        numberOfRounds = 1
    }
}

struct MainViewPreviews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
