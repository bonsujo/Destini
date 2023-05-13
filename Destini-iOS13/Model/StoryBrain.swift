//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct StoryBrain{
    let stories = [
                Story(
                title: "You read a fairytale book...Once upon a time there was a lovely princess. But she had an enchantment upon her of a fearful sort which could only be broken by love's first kiss.",
                choice1: "This is my calling, I'll be her love's first kiss!", choice1Destination: 2,
                choice2: "Laugh and rip the page out of the book,", choice2Destination: 1,
                choiceImage: UIImage()
                ),
                Story(
                    title: "You decide after a long day it is time to take a shower.",
                    choice1: "Maybe I should go to the local spa, their water pressure is ok.", choice1Destination: 2,
                    choice2: "I've got a mud shower right outisde with amazing pressure", choice2Destination: 2,
                    choiceImage: UIImage()
                ),
                Story(
                    title: "You think about the lovely princess from the book earlier.",
                    choice1: "I've got to save her, I'll be on my way right now!", choice1Destination: 4,
                    choice2: "Pshh, I don't believe in fairytales.", choice2Destination: 3,
                    choiceImage: UIImage()
                ),
                Story(
                    title: "Eventually you fall in love with the princess (Princess Fiona) on your journey with your friend donkey. You provide her with a love's first kiss but she remains. Still you lived ugly ever after. You are the one and only. The ogre of all ogres. You are Shrek! and you get the girl 😉",
                    choice1: "The", choice1Destination: 0,
                    choice2: "End", choice2Destination: 0,
                    choiceImage: #imageLiteral(resourceName: "shrek")
                ),
                Story(
                    title: "Booooo, you try to play the plain old boring prince charming and you have a proportionally abnormal chin AND you don't get the girl in the end 😢 You are Lord Farquaad...",
                    choice1: "The", choice1Destination: 0,
                    choice2: "End", choice2Destination: 0,
                    choiceImage: #imageLiteral(resourceName: "farquaad")
                )

    ]
    
    var storyNumber = 0
    
    mutating func nextStory(_ userChoice: String){
        let currentStory = stories[storyNumber]
        if (userChoice == currentStory.choice1){
            storyNumber = currentStory.choice1Destination
        }else if (userChoice == currentStory.choice2){
            storyNumber = currentStory.choice2Destination
        }
    }
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    func getImage() -> UIImage {
        return stories[storyNumber].choiceImage!
    }
    
    

}


