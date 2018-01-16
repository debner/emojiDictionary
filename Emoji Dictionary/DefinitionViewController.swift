//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Daniel Debner on 1/15/18.
//  Copyright © 2018 Daniel Debner. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
	
	@IBOutlet weak var yearLabel: UILabel!
	@IBOutlet weak var categoryLabel: UILabel!
	@IBOutlet weak var emojiDefinition: UILabel!
	@IBOutlet weak var emojiLabel: UILabel!
	var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

			// Do any additional setup after loading the view.

		emojiLabel.text = emoji.stringEmoji
		yearLabel.text = "Creation Year: \(emoji.birthYear)"
		categoryLabel.text = "Category: \(emoji.category)"
		emojiDefinition.text = emoji.definition
		
		// With this layout, you'd need to change each instance if you changed the verbage. This would also require many if statements.
		
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
