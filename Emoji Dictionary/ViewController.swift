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
	
	var emoji = ["😀","😃","😄","😁","😆","😅","😂","🤣","☺️","😊","😇","🙂","🙃","😉","😌","😍","😘"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		emojiTable.dataSource = self
		emojiTable.delegate = self
		
	}
	// How many rows?
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return emoji.count
	}
	// What goes in the row?
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		print(indexPath.row)
		let cell = UITableViewCell() //indexPath has information about what table wants to show
		cell.textLabel?.text = emoji[indexPath.row]
		return cell
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let singleEmoji = emoji[indexPath.row]
		tableView.deselectRow(at: indexPath, animated: true)
		performSegue(withIdentifier: "moveSegue", sender: singleEmoji)
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		let defVC = segue.destination as! DefinitionViewController
		defVC.emoji = sender as! String
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

