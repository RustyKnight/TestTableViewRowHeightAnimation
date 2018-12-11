//
//  ViewController.swift
//  TestTableAnimation
//
//  Created by Shane Whitehead on 12/12/18.
//  Copyright © 2018 Beam Communications. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

	@IBOutlet weak var heightConstraint: NSLayoutConstraint!
	@IBOutlet var actionButton: UIBarButtonItem!
	
	@IBOutlet weak var imageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		navigationItem.rightBarButtonItem = actionButton
	}

	@IBAction func performAction(_ sender: Any) {
		var targetImage: UIImage? = nil
		if heightConstraint.constant == CGFloat(44.0) {
			heightConstraint.constant = 256
			targetImage = UIImage(named: "large")
		} else {
			heightConstraint.constant = 44
			targetImage = UIImage(named: "small")
		}
		UIView.animate(withDuration: 0.3) {
			self.imageView.image = targetImage
		}
		tableView.beginUpdates()
		tableView.endUpdates()
	}
	
}

