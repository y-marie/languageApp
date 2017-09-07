//
//  ViewController.swift
//  languageApp
//
//  Created by 有希 on 2017/06/03.
//  Copyright © 2017年 Yuki Mitsudome. All rights reserved.

import UIKit
//マイク使用時モジュールインポート
//import Speech


class ViewController: UIViewController{
    
  //info.plistに追加 音声入力機能つける時
    //NSMicrophoneUsageDescription（マイクの用途について）
    //NSSpeechRecognitionUsageDescription（音声認識の用途について）

    @IBOutlet weak var originSentence: UITextView!
    
    @IBAction func tapToTranslate(_ sender: UIButton) {
        
    }
    
//音声認識する時用
//SFSpeechRecognizerDelegate プロトコル
//    let speechRecognizer = SFSpeechRecognizer(locale: Locale(identifier: "en-US"))!
//    var recognitionRequest: SFSpeechAudioBufferRecognitionRequest?
//    var recognitionTask: SFSpeechRecognitionTask?
//    let audioEngine = AVAudioEngine()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//音声認識する時用pt2
//speechRecognizer.delegate = self as! SFSpeechRecognizerDelegate
        
// Disable the record buttons until authorization has been granted.
// tapToTranslate.isEnabled = false
    }
    
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }


}

