//
//  ViewController.swift
//  Xylophone iOS
//
//  Created by Tulio Marcos Franca on 30/09/20.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
//        print(sender)
        print(sender.currentTitle!)
        
        playSound()
    }

    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

