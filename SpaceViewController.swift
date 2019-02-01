//
//  SpaceViewController.swift
//  Night Noise
//
//  Created by Dawid Jankowski on 01/02/2019.
//  Copyright © 2019 Dawid Jankowski. All rights reserved.
//

import UIKit
import AVFoundation

class SpaceViewController: UIViewController {
    
    var audioPlayerSpace = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func spaceSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            
            playSoundSpace()
        } else {
            audioPlayerSpace.stop()
        }
    }
    
    func playSoundSpace(){
        let soundURL = Bundle.main.url(forResource: "space", withExtension: "wav")
        
        do {
            try audioPlayerSpace = AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayerSpace.numberOfLoops = -1
        audioPlayerSpace.play()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
