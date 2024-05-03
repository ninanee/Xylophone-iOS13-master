//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var player : AVAudioPlayer!
    

    @IBAction func KeyCPressed(_ sender: UIButton) {
        print("C got printed")
        playSound()
        
    }
    
    func playSound() {
        let pianoSound = URL(fileURLWithPath: Bundle.main.path(forResource: "C", ofType: "wav")!)
        player = try! AVAudioPlayer(contentsOf: pianoSound)
        player.play()
    }
    

}

