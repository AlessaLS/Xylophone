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
    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func keyPressed(_ sender: UIButton) {
       // print(sender.backgroundColor)
        //this will print the background color every time its pressed.
//        print(sender.titleLabel?.text)
//        this will print the label of the pressed key.
        playSound(soundName: sender.currentTitle!)
       
        sender.alpha = 0.5  //opacity when tap on it.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0 //opacity go back to normal after 0.2 seconds.
        }
        
    }
    func playSound(soundName: String) {
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
    }
            
}

