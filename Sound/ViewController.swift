//
//  ViewController.swift
//  Sound
//
//  Created by Haruko Okada on 9/15/20.
//  Copyright © 2020 Haruko Okada. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //ドラムのサウンドファイルを読み込みプレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func drum(_ sender: Any) {
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    }
    
}

