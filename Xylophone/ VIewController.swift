//
//  ViewController.swift
//  Xylophone
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        do
        {
            try audioPlayer = AVAudioPlayer(contentsOf: url)
        }
        catch
        {
            print(error)
        }
        audioPlayer.play()
    }
}

