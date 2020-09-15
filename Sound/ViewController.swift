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
    
    @IBOutlet var drumButton: UIButton!
    @IBOutlet weak var pianoButton: UIButton!
    @IBOutlet weak var guitarButton: UIButton!
    
    //ドラムのサウンドファイルを読み込みプレイヤーを作る
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    //ピアノのサウンドファイルを読み込みプレイヤーを作る
     let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)

    //ギターのサウンドファイルを読み込みプレイヤーを作る
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchDownDrumButton(_ sender: Any) {
        //ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        
        //ドラムの音を再生する
        drumSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumButton(){
        //ドラムが鳴ってない画像に切り替える
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    @IBAction func touchDownPianoButton(_ sender: Any) {
        //ピアノが鳴っている画像に切り替える
         pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
         
         //ドラムの音を巻き戻す
         pianoSoundPlayer.currentTime = 0
         
         //ドラムの音を再生する
         pianoSoundPlayer.play()
    }
    
    @IBAction func touchUpPianoButton(_ sender: Any) {
        //ピアノが鳴ってない画像に切り替える
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    @IBAction func touchDownGuitarButton(_ sender: Any) {
        //ピアノが鳴っている画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
           
        //ドラムの音を巻き戻す
        guitarSoundPlayer.currentTime = 0
           
        //ドラムの音を再生する
        guitarSoundPlayer.play()
    }
    
    @IBAction func touchUpGuitarButton(_ sender: Any) {
        //ピアノが鳴ってない画像に切り替える
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
    
}

