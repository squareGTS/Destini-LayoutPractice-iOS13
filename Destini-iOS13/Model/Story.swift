//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let title : String
    let choice1 : String
    let choice2 : String
    let choice1Destination : Int
    let choice2Destination : Int
    
    init (t: String, ch1: String, ch1Dest: Int, ch2: String, ch2Dest: Int){
        title = t
        choice1 = ch1
        choice1Destination = ch1Dest
        choice2 = ch2
        choice2Destination = ch2Dest
    }
}



