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

    lazy var avPlayer: AVPlayer = {
        let apItem = AVPlayerItem.init(URL: NSURL.init(string: "http://cn-shcy5-dx.acgvideo.com/vg2/e/88/6852792hd.mp4?expires=1460115000&ssig=v0H6zluiRLPLPAOgIsIX-Q&oi=3031252344&appkey=86385cdc024c0f6c&or=3026306825&rate=0")!)
        let ap = AVPlayer.init(playerItem: apItem)
        return ap
    }()
    
    var avLayer: AVPlayerLayer = AVPlayerLayer.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyanColor()
        avLayer.player = avPlayer
        avLayer.frame = self.view.bounds
        self.view.layer.addSublayer(avLayer)
        self.avPlayer.play()
        
//        let apItem2 = AVPlayerItem.init(URL: NSURL.init(string: "http://cn-shcy3-dx.acgvideo.com/vg8/8/88/6966263hd.mp4?expires=1460118900&ssig=M4UkZhM3rQtfGG4567OxDA&oi=3031252344&appkey=86385cdc024c0f6c&or=3026306825&rate=0")!)
        self.avPlayer.rate = 2.0
//        self.avPlayer.replaceCurrentItemWithPlayerItem(apItem2)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let appBaseSB = UIStoryboard.init(name: "AppBase", bundle: nil)
        let vc = appBaseSB.instantiateInitialViewController()
        dispatch_after(5, dispatch_get_main_queue()) { 
            self.presentViewController(vc!, animated: true, completion: nil)
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

