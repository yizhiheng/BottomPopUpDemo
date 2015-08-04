//
//  ViewController.swift
//  BottomPopUpDemo
//
//  Created by Zhiheng Yi on 2015-08-04.
//  Copyright (c) 2015 Zhiheng Yi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var maskButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showPopUpButtonTapped(sender: AnyObject) {
        scrollView.hidden = false
        maskButton.hidden = false
        
    }

    @IBAction func maskButtonTapped(sender: AnyObject) {
        maskButton.hidden = true
        scrollView.hidden = true
    }
}

