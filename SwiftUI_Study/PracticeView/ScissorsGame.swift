//
//  ScissorsGame.swift
//  SwiftUI_Study
//
//  Created by 강치우 on 11/13/23.
//

import SwiftUI

struct ScissorsGame: View {
    @State private var gameImageNameData: [InputState] = [.paper, .rock, .scissors]
    @State private var computerImage = "rock"
    @State private var playerImage = "rock"
    @State private var gameResult: String = "결과는?"
    
    enum InputState: String {
        case scissors
        case rock
        case paper
    }
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                Text("Computer?")
                
                Spacer()
                
                Text("Player?")
            }
            .padding([.leading, .trailing], 60)
            HStack {
                Image(computerImage)
                
                Image(playerImage)
            }
            
            Spacer()
            
            Text(gameResult)
            
            Spacer()
            
            HStack {
                Button(action: {
                    didTapChangeDiceImageButton()
                }, label: {
                    Text("가위")
                })
                .frame(width: 100, height: 50)
                .background(.orange)
                .cornerRadius(15)
                .padding(.trailing, 20)
                
                Button(action: {
                    didTapChangeDiceImageButton2()
                }, label: {
                    Text("바위")
                })
                .frame(width: 100, height: 50)
                .background(.gray)
                .cornerRadius(15)
                
                Button(action: {
                    didTapChangeDiceImageButton3()
                }, label: {
                    Text("보")
                })
                .frame(width: 100, height: 50)
                .background(.blue)
                .cornerRadius(15)
                .padding(.leading, 20)
            }
            .foregroundStyle(.white)
            .padding()
        }
    }
    
    func didTapChangeDiceImageButton() {
        playerImage = "scissors"
        let randomInput = gameImageNameData.randomElement()!
        computerImage = randomInput.rawValue
        gameResult = fetchGameResult(myInput: .scissors, computerInput: randomInput)
        
    }
    
    func didTapChangeDiceImageButton2() {
        playerImage = "rock"
        let randomInput = gameImageNameData.randomElement()!
        computerImage = randomInput.rawValue
        gameResult = fetchGameResult(myInput: .rock, computerInput: randomInput)
    }
    
    func didTapChangeDiceImageButton3() {
        playerImage = "paper"
        let randomInput = gameImageNameData.randomElement()!
        computerImage = randomInput.rawValue
        gameResult = fetchGameResult(myInput: .paper, computerInput: randomInput)
    }
    
    private func fetchGameResult(myInput: InputState, computerInput: InputState) -> String {
        switch myInput {
        case .paper:
            switch computerInput {
            case .paper:
                return "비겼다 한번 더!"
            case .scissors:
                return "졌다ㅠㅠ"
            case .rock:
                return "이겼다!"
            }
        case .scissors:
            switch computerInput {
            case .paper:
                return "이겼다!"
            case .scissors:
                return "비겼다 한번 더!"
            case .rock:
                return "졌다ㅠㅠ"
            }
        case .rock:
            switch computerInput {
            case .paper:
                return "졌다ㅠㅠ"
            case .scissors:
                return "이겼다!"
            case .rock:
                return "비겼다 한번 더!"
            }
        }
    }
}

#Preview {
    ScissorsGame()
}
