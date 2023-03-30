//
//  AudioPlayer.swift
//  mc1-aidle
//
//  Created by byo on 2023/03/30.
//

import AVFoundation

final class AudioPlayer {
    static let shared = AudioPlayer()
    
    private var player: AVAudioPlayer?
    
    private init() {
    }
    
    func play(key: String, fileExtension: String = "mp3") {
        guard let url = Bundle.main.url(forResource: key, withExtension: fileExtension),
              let player = Self.getPlayer(url: url) else {
            return
        }
        self.player = player
        player.play()
    }
    
    func stop() {
        player?.stop()
    }
    
    private static func getPlayer(url: URL) -> AVAudioPlayer? {
        guard let player = try? AVAudioPlayer(contentsOf: url) else {
            return nil
        }
        player.numberOfLoops = 0
        return player
    }
}
