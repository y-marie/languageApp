//
//  yakuViewController.swift
//  languageApp
//
//  Created by yuki on 2017/08/31.
//  Copyright © 2017年 Yuki Mitsudome. All rights reserved.
//

import UIKit
import AVFoundation

class yakuViewController: UITabBarController,AVSpeechSynthesizerDelegate{

    @IBOutlet weak var originSentence: UITextView!
    
    @IBOutlet weak var yakuSentence: UITextView!
    
    //読み上げ用
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


//tapToReadで読み上げ
    @IBAction func tspToRead(_ sender: UIButton) {
        var talker = AVSpeechSynthesizer()
        
        let utterance = AVSpeechUtterance(yakuSentence)
        utterance.voice = AVSpeechSynthesisVoice(language: "en")
        //TODO:後から変更
        //前ページで選択された言語で読み上げできるように
        self.talker.speakUtterance(utterance)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
