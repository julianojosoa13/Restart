//
//  AudioPlayer.swift
//  Restart
//
//  Created by Juliano RAHAJAHARIMANGA on 01/04/2025.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file!")
        }
    }
}
