//
//  VideoPlayerViewController.swift
//  RealDabu
//
//  Created by I Gede Bagus Wirawan on 11/04/22.
//

import AVKit
import AVFoundation
import UIKit
import FloatingPanel

class VideoPlayerViewController: UIViewController, FloatingPanelControllerDelegate {
    

    @IBOutlet weak var VideoView: UIView!
    
    var player : AVPlayer!
    var avpController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //for floating panel
        let fpc = FloatingPanelController()
        
        fpc.delegate = self
        
        guard let contentVC = storyboard?.instantiateViewController(withIdentifier: "ContentViewController") as? ContentViewController else { return }
        
        fpc.set(contentViewController: contentVC)
        fpc.addPanel(toParent: self)
        
        
        //for video
        let video = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "zenitzu", ofType: "mp4")!))
        
        avpController.player = video
        avpController.view.frame.size.height = VideoView.frame.size.height
        avpController.view.frame.size.width = VideoView.frame.size.width
        
        self.VideoView.addSubview(avpController.view)

        //soon lanjutin
    }
    
    
    
    
    
    
    //test
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "zenitzu", ofType: "mp4")!))
//
//        let vc = AVPlayerViewController()
//
//        vc.player = player
//
//        present(vc, animated: true)
//
        //let layer = AVPlayerLayer(player: player)
//        layer.videoGravity = .resizeAspectFill
//
//        layer.frame = view.bounds
//        player.volume = 50
        
        //view.layer.addSublayer(layer)
        
        //player.play()
    //}

}
