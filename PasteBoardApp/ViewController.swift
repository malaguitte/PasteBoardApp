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
    
    var pastedText: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showText()
    }
    
    func addText() {
        //check whether there's something on the pasteboard
        //and that the text isn't already there
        guard let text = UIPasteboard.general.string, !pastedText.contains(text) else {
            return
        }
        pastedText.append(text)
        showText()
    }
    
    func showText() {
        self.clearTextView()
        for text in pastedText {
            textView.text.append("\(text)\n\n")
        }
    }
    
    func clearTextView() {
        textView.text = "";
    }
    
    @IBAction func trashWasPressed(_ sender: Any) {
    }
}

