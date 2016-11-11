//
//  ViewController.swift
//  thomaskamps-pset2
//
//  Created by Thomas Kamps on 08-11-16.
//  Copyright © 2016 Thomas Kamps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondVC = segue.destination as? SecondViewController {
            
            let textNames = ["madlib3_clothes", "madlib4_dance", "madlib2_university", "madlib1_tarzan", "madlib0_simple"]
            let selectedText = textNames[Int(arc4random_uniform(UInt32(textNames.count)))]
            var textStream: String?
            
            if let path = Bundle.main.path(forResource: selectedText, ofType: "txt") {
                do {
                    textStream = try String(contentsOfFile: path, encoding: .utf8)
                } catch {
                    print(error)
                }
            }
            
            let story = Story(stream: textStream!)
            
            secondVC.story = story
        }
    }

}

