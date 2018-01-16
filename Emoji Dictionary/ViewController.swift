//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Daniel Debner on 1/15/18.
//  Copyright © 2018 Daniel Debner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	@IBOutlet weak var emojiTable: UITableView!
	// Table view needs to know how many rows there are and what they are
	
	var emoji : [Emoji] = []
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		// Gets called when ViewController shows up for the first time
		
		emojiTable.dataSource = self
		emojiTable.delegate = self
		
		emoji = makeEmojiArray()
		
	}
	// How many rows?
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return emoji.count
	}
	// What goes in the row?
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		print(indexPath.row)
		let cell = UITableViewCell() //indexPath has information about what table wants to show
		let singleEmoji = emoji[indexPath.row]
		cell.textLabel?.text = singleEmoji.stringEmoji
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let singleEmoji = emoji[indexPath.row]
		tableView.deselectRow(at: indexPath, animated: true)
		performSegue(withIdentifier: "moveSegue", sender: singleEmoji)
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let defVC = segue.destination as! DefinitionViewController
		defVC.emoji = sender as! Emoji
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	func makeEmojiArray() -> [Emoji] { // Return array of emoji objects
		let emoji1 = Emoji() // Necessary for each object in the array
		emoji1.stringEmoji = "😀"
		emoji1.birthYear = 2009
		emoji1.category = "Smiley"
		emoji1.definition = "A grinning smile"
		
		let emoji2 = Emoji()
		emoji2.stringEmoji = "😃"
		emoji2.birthYear = 2010
		emoji2.category = "Smiley"
		emoji2.definition = "A grinning face with open mouth"
		
		let emoji3 = Emoji()
		emoji3.stringEmoji = "😄"
		emoji3.birthYear = 2009
		emoji3.category = "Smiley"
		emoji3.definition = "A grinning face with squinting eyes"
		
		let emoji4 = Emoji()
		emoji4.stringEmoji = "😁"
		emoji4.birthYear = 2009
		emoji4.category = "Smiley"
		emoji4.definition = "A grinning face with smiling eyes"
		
		let emoji5 = Emoji()
		emoji5.stringEmoji = "🐧"
		emoji5.birthYear = 2012
		emoji5.category = "Animals & Nature"
		emoji5.definition = "A penguin"
		
		let emoji6 = Emoji()
		emoji6.stringEmoji = "🍓"
		emoji6.birthYear = 2014
		emoji6.category = "Food & Drink"
		emoji6.definition = "A strawberry"
	
		let emoji7 = Emoji()
		emoji7.stringEmoji = "💯"
		emoji7.birthYear = 2009
		emoji7.category = "Symbols"
		emoji7.definition = "A 100 Percent Symbol"
		
		return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
	}

}

