//
//  ViewController.swift
//  PasteBoardApp
//
//  Created by Anderson Malaguitte on 16/06/2020.
//  Copyright © 2020 Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showText()
    }
    
    func addText() {
        showText()
    }
    
    func showText() {
        textView.text = UIPasteboard.general.string
    }
    
    @IBAction func trashWasPressed(_ sender: Any) {
    }
}

