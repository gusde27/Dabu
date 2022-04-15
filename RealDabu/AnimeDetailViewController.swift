//
//  AnimeDetailViewController.swift
//  RealDabu
//
//  Created by I Gede Bagus Wirawan on 10/04/22.
//

import UIKit


class AnimeDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var PassedImageDetail: UIImageView!
    
    @IBOutlet weak var PassedTitleDetail: UILabel!
    @IBOutlet weak var PassedDecDetail: UILabel!
    
    
    var ImagePindahan = UIImage()
    var titlePindahan = UILabel()
    var DecPindahan = UILabel()
    
    //for table view
    //data tableview

    struct ClipsData {
        let judul : String
        let image : String
        let dec : String
        let text : String
    }

    let ClipsCellImages: [ClipsData] = [
        ClipsData(
            judul: "Rengoku smile and very lol",
            image: "rengoku_smile",
            dec: "rengoku adnakjnda dka dksa s dka dka d",
            text: "Oomori I guess they weren’t exaggerating when they called you a binge eater. Oomori I guess they weren’t exaggerating when they called you a binge eater. Oomori I guess they weren’t exaggerating when they called you a binge eater. Oomori I guess they weren’t exaggerating when they called you a binge eater."
        ),
        ClipsData(
            judul: "Kimetsu No Yaiba best",
            image: "kimetsu",
            dec: "rengoku adnakjnda dka dksa s dka dka d",
            text: "Rengoku : adnakjdna wdjk akdj adjk akd awkd awk dakw dkad"
        ),
        ClipsData(
            judul: "Rengoku very nice",
            image: "rengoku_gas",
            dec: "rengoku renguko",
            text: "Rengoku : Intruders are believed to be ghouls – I repeat, ghouls. All units are to proceed on-site immediately. Rengoku : Intruders are believed to be ghouls – I repeat, ghouls. All units are to proceed on-site immediately. Rengoku : Intruders are believed to be ghouls – I repeat, ghouls. All units are to proceed on-site immediately. Rengoku : Intruders are believed to be ghouls – I repeat, ghouls. All units are to proceed on-site immediately."
        ),
        ClipsData(
            judul: "Nezuko want to swim",
            image: "nezuko",
            dec: "rengoku adnakjnda dka dksa s dka dka d",
            text: "Nezuko : You know, I hate it when people interrupt me during a meal. Nezuko : You know, I hate it when people interrupt me during a meal. Nezuko : You know, I hate it when people interrupt me during a meal. Nezuko : You know, I hate it when people interrupt me during a meal."
        ),
        ClipsData(
            judul: "Zenitzu cry when with kaneki",
            image: "zenitzu",
            dec: "rengoku adnakjnda dka dksa s dka dka d",
            text: "Zenitzu : Give them back… Those are mine! Give them back! Zenitzu : Give them back… Those are mine! Give them back! Zenitzu : Give them back… Those are mine! Give them back!"
        ),

    ]
    //end data tableview
    
    
    @IBOutlet weak var bookmarkTable: UITableView!
    
    //func
    //for table view
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ClipsCellImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let bookmark = ClipsCellImages[indexPath.row]
        
        let cell = bookmarkTable.dequeueReusableCell(withIdentifier: "bookmarkCell", for: indexPath) as! BookmarkTableViewCell
        
        
        //bookmarkCell.BookmarkImageCell.image = UIImage(named: bookmark.bookmarkImage)
        cell.img_bookmark.image = UIImage(named: bookmark.image)
        cell.title_bookmark.text = bookmark.judul
        cell.dec_bookmark.text = bookmark.dec
        
        
        return cell
    }
    
    //buat pindah data
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let bookmark = ClipsCellImages[indexPath.row]
        
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ClipsDetailViewController") as? ClipsDetailViewController {
            
            vc.ImagePindahan = UIImage(named: bookmark.image)!
            vc.TitlePindahan.text = bookmark.judul
            vc.TextPindahan.text = bookmark.text
            
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    
    //super view load
    override func viewDidLoad() {
        super.viewDidLoad()
       
        title = "Anime Detail"
               
        
        PassedImageDetail.image = ImagePindahan
        PassedTitleDetail.text = titlePindahan.text
        PassedDecDetail.text = DecPindahan.text

        // Do any additional setup after loading the view.
    }
    

}
