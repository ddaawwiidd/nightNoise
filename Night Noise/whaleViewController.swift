//
//  WhaleViewController.swift
//  Night Noise
//
//  Created by Dawid Jankowski on 01/02/2019.
//  Copyright © 2019 Dawid Jankowski. All rights reserved.
//

import UIKit
import AVFoundation

class WhaleViewController: UIViewController {

    var audioPlayerWhale = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func whaleSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            
            playSoundWhale()
        } else {
            audioPlayerWhale.stop()
        }
    }
    
    func playSoundWhale(){
        let soundURL = Bundle.main.url(forResource: "Whale2", withExtension: "wav")
        
        do {
            try audioPlayerWhale = AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayerWhale.numberOfLoops = -1
        audioPlayerWhale.play()
        
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
