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
    @IBOutlet weak var showPopUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showPopUpButton.layer.cornerRadius = 20
        showPopUpButton.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showMask() {
        self.maskButton.hidden = false
        self.maskButton.alpha = 0
        spring(0.5) {
            self.maskButton.alpha = 1
        }
    }
    
    func hideBottonView() {
        spring(0.5) {
            self.scrollView.transform = CGAffineTransformMakeTranslation(0, 0)
            self.showPopUpButton.transform = CGAffineTransformMakeScale(1, 1)    //主View变回原来大小
            self.scrollView.hidden = true    //隐藏shareView
        }
    }
    
    func setScrollView () {
        let iconNameArray =  ["anchor", "booklet", "caution", "cruise", "gamecontroller", "hourglass", "paintroller", "rainbow", "spaceshuttle", "tractor", "art", "briefcase", "chat", "denied", "gas", "lightbulb", "parachute", "recycle", "stack", "travelerbag", "bike", "brightness", "check", "fashion", "hazard", "megaphone2", "phone", "ribbon", "star", "ufo", "blimp", "browser", "compass", "flame", "heart", "merge", "plane", "rocket", "submarine", "unlocked", "bolt", "car", "compose", "flash", "helicopter", "microphone", "present", "running", "support", "windy", "bomb", "cart", "countdown", "flower", "hotair", "motorcycle", "racingflags", "shop", "tools", "x"]
        
    }

    @IBAction func showPopUpButtonTapped(sender: AnyObject) {
        showMask()
        scrollView.hidden = false
        scrollView.transform = CGAffineTransformMakeTranslation(0, 250)
        spring(0.5) {
            self.scrollView.transform = CGAffineTransformMakeTranslation(0, 0)
            self.showPopUpButton.transform = CGAffineTransformMakeScale(0.8, 0.8)    //主View缩为原来的0.8
        }
        
    }

    @IBAction func maskButtonTapped(sender: AnyObject) {
        spring(0.5) {
            self.maskButton.alpha = 0
        }
        hideBottonView()
    }
}

