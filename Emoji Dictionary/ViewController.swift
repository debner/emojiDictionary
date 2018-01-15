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
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

