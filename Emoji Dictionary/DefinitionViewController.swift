//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Daniel Debner on 1/15/18.
//  Copyright © 2018 Daniel Debner. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
	
	@IBOutlet weak var emojiDefinition: UILabel!
	@IBOutlet weak var emojiLabel: UILabel!
	var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

			// Do any additional setup after loading the view.

		emojiLabel.text = emoji
		
		if emoji == "😀" {
			emojiDefinition.text = "A grinning smile"
		}
		if emoji == "😃" {
			emojiDefinition.text = "A grinning face with open mouth"
		}
		if emoji == "😄" {
			emojiDefinition.text = "A grinning face with squinting eyes"
		}
		if emoji == "😁" {
			emojiDefinition.text = "A grinning face with smiling eyes"
		}
		
		
		
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
