//
//  ClipsDetailViewController.swift
//  RealDabu
//
//  Created by I Gede Bagus Wirawan on 10/04/22.
//

import UIKit

class ClipsDetailViewController: UIViewController {
    
    
    @IBOutlet weak var PassedImageClips: UIImageView!
    @IBOutlet weak var PassedTitleClips: UILabel!
    @IBOutlet weak var PassedTextClips: UILabel!
    
    var ImagePindahan = UIImage()
    var TitlePindahan = UILabel()
    var TextPindahan = UILabel()
    
    //for bookmark
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Clip Detail"

        //code
        PassedImageClips.image = ImagePindahan
        PassedTitleClips.text = TitlePindahan.text
        PassedTextClips.text = TextPindahan.text

    }

}
