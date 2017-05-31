//
//  PitchViewController.swift
//  pitchPerfect
//
//  Created by Ryann Consalo on 2017/05/31.
//  Copyright © 2017 Ryann Consalo. All rights reserved.
//

import UIKit
import AVFoundation

class PitchViewController: UIViewController, AVAudioPlayerDelegate {
    
    var receivedAudio : URL?
    var audioPlayer: AVAudioPlayer?

    @IBOutlet weak var playButton: UIButton!
    @IBAction func playSound(_ sender: Any) {
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: (receivedAudio)!)
            //audioPlayer!.delegate = self
            audioPlayer?.enableRate = true
            audioPlayer?.rate = 3
            audioPlayer!.prepareToPlay()
            audioPlayer!.play()
        } catch let error as NSError {
            print("audioPlayer error: \(error.localizedDescription)")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
