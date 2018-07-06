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

    func playSound(buttonPressedIndex: Int32)
    {
        let url = Bundle.main.url(forResource: "note"+String(buttonPressedIndex), withExtension: "wav")!
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
    @IBAction func notePressed(_ sender: UIButton) {
        playSound(buttonPressedIndex: Int32(sender.tag))
    }
}

