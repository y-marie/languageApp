//
//  yakuViewController.swift
//  languageApp
//
//  Created by yuki on 2017/08/31.
//  Copyright © 2017年 Yuki Mitsudome. All rights reserved.
//

import UIKit
//読み上げ
import AVFoundation

class yakuViewController: UITabBarController,AVSpeechSynthesizerDelegate{

    //Delegateを設定する事により、読み上げの開始/終了のタイミング
    //読み上げ中の言葉を取得する事が可能になる
    
    @IBOutlet weak var originSentence: UITextView!
    
    @IBOutlet weak var yakuSentence: UITextView!
    
    //SpeechSynthesizerクラス
    var talker = AVSpeechSynthesizer()
    
    //読み上げ用
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Delegate設定した時のみ以下
        self.talker.delegate = self
    }


    //tapToReadで読み上げ
    @IBAction func tspToRead(_ sender: UIButton) {
        
        var talker = AVSpeechSynthesizer()
        
        let utterance = AVSpeechUtterance(string:self.yakuSentence.text!)
        utterance.voice = AVSpeechSynthesisVoice(language: "en")
        
//TODO:後から変更
    //上のenを前ページで選択された言語で読み上げできるように
    //selfでいけんじゃ？
        
        //読み上げ
        self.talker.speak(utterance)
       
       
//TODO:もしできたら
    
    // 話す速度を設定（0.0〜1.0）
        //utterance.rate = AVSpeechUtteranceMinimumSpeechRate
        //3段階くらい選べるように
        //if文で
        
    // 声の高さを設定（0.5〜2.0）
        //utterance.pitchMultiplier = 1.8
        //これも
        }
    
    //読み上げ開始
    func speechSynthesizer(synthesizer: AVSpeechSynthesizer!, didStartSpeechUtterance utterance: AVSpeechUtterance!)
    {
        print("開始")
    }
    
    //終了
    func speechSynthesizer(synthesizer: AVSpeechSynthesizer!, didFinishSpeechUtterance utterance: AVSpeechUtterance!)
    {
        print("終了")
    }
    
    //読み上げ中の言葉を取得
    func speechSynthesizer(synthesizer: AVSpeechSynthesizer!, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance!)
    {
        let word = (utterance.speechString as NSString).substring(with: characterRange)
        print("Speech: \(word)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
