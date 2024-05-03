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
        print(sender.currentTitle)
        playSound(soundName: sender.currentTitle!)
        sender.alpha = 0.7
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
    }
    
    func playSound(soundName: String) {
        let pianoSound = URL(fileURLWithPath: Bundle.main.path(forResource: soundName, ofType: "wav")!)
        player = try! AVAudioPlayer(contentsOf: pianoSound)
        player.play()
    }
    

}

