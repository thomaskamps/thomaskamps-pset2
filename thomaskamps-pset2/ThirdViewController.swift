//
//  ThirdViewController.swift
//  thomaskamps-pset2
//
//  Created by Thomas Kamps on 11-11-16.
//  Copyright © 2016 Thomas Kamps. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var story = Story(stream: "")
    
    @IBOutlet weak var textOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textOutlet.text = story.toString()
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

}
