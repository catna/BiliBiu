//
//  ViewController.swift
//  BiliBiu
//
//  Created by MX on 16/4/8.
//  Copyright © 2016年 MX. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var avPlayer: AVPlayer = AVPlayer.init(URL: NSURL.init(string: "http://cn-shcy5-dx.acgvideo.com/vg2/e/88/6852792hd.mp4?expires=1460115000&ssig=v0H6zluiRLPLPAOgIsIX-Q&oi=3031252344&appkey=86385cdc024c0f6c&or=3026306825&rate=0")!)
    var avLayer: AVPlayerLayer = AVPlayerLayer.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyanColor()
        avLayer.player = avPlayer
        avLayer.frame = self.view.bounds
        self.view.layer.addSublayer(avLayer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

