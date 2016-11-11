//
//  SecondViewController.swift
//  thomaskamps-pset2
//
//  Created by Thomas Kamps on 08-11-16.
//  Copyright © 2016 Thomas Kamps. All rights reserved.
//

import UIKit
import Foundation

class SecondViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var nextWordOutlet: UIButton!
    @IBOutlet weak var storyOutlet: UIButton!
    
    var story = Story(stream: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let initCount = story.getPlaceholderRemainingCount()
        counter.text = String(initCount) + " words remaining!"
        textInput.placeholder = story.getNextPlaceholder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func textInputAction(_ sender: UIViewController) {
        nextWord()
    }
    
    @IBAction func nextWordAction(_ sender: Any) {
        nextWord()
    }
    
    func nextWord() {
        let word = textInput.text
        if word != "" {
            story.fillInPlaceholder(word: word!)

            let initCount = story.getPlaceholderRemainingCount()
            counter.text = String(initCount) + " words remaining!"
            
            textInput.text = ""
            
            if story.isFilledIn() {
                textInput.placeholder = "All words are filled in!"
                textInput.isUserInteractionEnabled = false
                nextWordOutlet.isEnabled = false
                storyOutlet.isHidden = false

            } else {
                textInput.placeholder = story.getNextPlaceholder()
            }
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let thirdVC = segue.destination as? ThirdViewController {
            thirdVC.story = story
        }
    }
    
    

}
