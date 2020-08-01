//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

var questionNumber = 0

struct StoryBrain {
    let story = [
        Story(
            t: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            ch1: "I'll hop in. Thanks for the help!", ch1Dest: 2,
            ch2: "Better ask him if he's a murderer first.", ch2Dest: 1
        ),
        Story(
            t: "He nods slowly, unfazed by the question.",
            ch1: "At least he's honest. I'll climb in.", ch1Dest: 2,
            ch2: "Wait, I know how to change a tire.", ch2Dest: 3
        ),
        Story(
            t: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            ch1: "I love Elton John! Hand him the cassette tape.", ch1Dest: 5,
            ch2: "It's him or me! You take the knife and stab him.", ch2Dest: 4
        ),
        Story(
            t: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            ch1: "The", ch1Dest: 0,
            ch2: "End", ch2Dest: 0
        ),
        Story(
            t: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            ch1: "The", ch1Dest: 0,
            ch2: "End", ch2Dest: 0
        ),
        Story(
            t: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            ch1: "The", ch1Dest: 0,
            ch2: "End", ch2Dest: 0
        )
    ]

    func getQuestionText() -> String {
        return story[questionNumber].title
    }
    
    func getAnswer1() -> String{
        return story[questionNumber].choice1
    }
    
    func getAnswer2() -> String{
        return story[questionNumber].choice2
    }
    
    func checkAnswer(_ userAnswer: String) -> Int {
        if userAnswer == story[questionNumber].choice1 {
            return story[questionNumber].choice1Destination
        } else {
            return story[questionNumber].choice2Destination
        }
    }
}

