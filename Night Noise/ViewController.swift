//
//  ViewController.swift
//  Night Noise
//
//  Created by Dawid Jankowski on 16/01/2019.
//  Copyright © 2019 Dawid Jankowski. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayerFire = AVAudioPlayer()
    var audioPlayerWind = AVAudioPlayer()
    var audioPlayerWater = AVAudioPlayer()
    var audioPlayerForest = AVAudioPlayer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func fireSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            
            playSoundFire()
        } else {
            audioPlayerFire.stop()
        }
    }
    
    @IBAction func windSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            
            playSoundWind()
        } else {
            audioPlayerWind.stop()
        }
    }
    
    
    @IBAction func waterSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            
            playSoundWater()
        } else {
            audioPlayerWater.stop()
        }
    }
    
    @IBAction func forestSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            
            playSoundForest()
        } else {
            audioPlayerForest.stop()
        }
    }
    
    func playSoundFire(){
        let soundURL = Bundle.main.url(forResource: "fire", withExtension: "wav")
        
        do {
            try audioPlayerFire = AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayerFire.numberOfLoops = -1
        audioPlayerFire.play()
        
    }
    
    func playSoundWind(){
        let soundURL = Bundle.main.url(forResource: "windy", withExtension: "wav")
        
        do {
            try audioPlayerWind = AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayerWind.numberOfLoops = -1
        audioPlayerWind.play()
        
    }
    
    func playSoundWater(){
        let soundURL = Bundle.main.url(forResource: "relaxRain", withExtension: "mp3")
        
        do {
            try audioPlayerWater = AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayerWater.numberOfLoops = -1
        audioPlayerWater.play()
        
    }
    
    func playSoundForest(){
        let soundURL = Bundle.main.url(forResource: "forest", withExtension: "wav")
        
        do {
            try audioPlayerForest = AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayerForest.numberOfLoops = -1
        audioPlayerForest.play()
        
    }
    
}

