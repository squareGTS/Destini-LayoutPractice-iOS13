//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = storyBrain.checkAnswer(userAnswer)
        
        
        
        
        
        
    }
    
    func updateUI() {
        //let answerChoice = storyBrain.getA
        questionLabel.text = storyBrain.getQuestionText()
         
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
}

