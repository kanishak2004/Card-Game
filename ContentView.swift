//
//  ContentView.swift
//  War Card Game
//
//  Created by Kanishk thakur on 03/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    deal()
                    
                }, label: {
                    Image("button")
                    
                    
                })
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("player1")
                            .bold()
                            .padding(.bottom, 10.0)
                        
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("cpu")
                            .bold()
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                }
                
                .foregroundColor(.white)
                Spacer()
                
            }
        }
        
        
    }
    
    func deal() {
        // randomize the player card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        // randomize the cpu card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        // update the scores
        if playerCardValue>cpuCardValue{
            // add 1 to player score
            // playerscore = playerscore +1
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            // cpuscore = cpuscore + 1
            cpuScore += 1
        }
    }
    struct Content_Previews: PreviewProvider{
        static var previews: some View{
            ContentView()
        }
    }
}
