//
//  BookmarkViewController.swift
//  RealDabu
//
//  Created by I Gede Bagus Wirawan on 06/04/22.
//

import UIKit



class BookmarkViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var bookmarkTable: UITableView!
    
    //clips data
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
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Bookmark"
        //bookmarkTable.dataSource = self
    }
    
}

//code sebelumnya
//import UIKit
//
//class BookmarkViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//
//    @IBOutlet weak var bookmarkTable: UITableView!
//
//    struct Bookmark {
//        let bookmarkImage: String
//        let animeTitle: String
//        let animeDec:String
//    }
//
//    let dataBookmark: [Bookmark] = [
//        Bookmark(
//            bookmarkImage: "kimetsu",
//            animeTitle: "Tanjirou No Yaiba",
//            animeDec: "once upon a time there is a boy name tanjirou"
//        ),
//        Bookmark(bookmarkImage: "nezuko", animeTitle: "Nezuko No Yaiba", animeDec: "once upon a time there is a boy name Nezuko"),
//        Bookmark(bookmarkImage: "rengoku_gas", animeTitle: "Rengoku No Yaiba", animeDec: "once upon a time there is a boy name Rengoku"),
//        Bookmark(bookmarkImage: "rengoku_smile", animeTitle: " Rengoku Smile :)", animeDec: "once upon a time there is a boy name Rengoku"),
//        Bookmark(bookmarkImage: "zenitzu", animeTitle: "Zenitzu No Yaiba", animeDec: "once upon a time there is a boy name zenitzu dasjndajf asfaf ajs fasj fajs "),
//        Bookmark(bookmarkImage: "kimetsu", animeTitle: "Tanjirou No Yaiba", animeDec: "once upon a time there is a boy name tanjirou"),
//        Bookmark(bookmarkImage: "nezuko", animeTitle: "Nezuko No Yaiba", animeDec: "once upon a time there is a boy name Nezuko"),
//        Bookmark(bookmarkImage: "rengoku_gas", animeTitle: "Rengoku No Yaiba", animeDec: "once upon a time there is a boy name Rengoku"),
//        Bookmark(bookmarkImage: "rengoku_smile", animeTitle: " Rengoku Smile :)", animeDec: "once upon a time there is a boy name Rengoku"),
//        Bookmark(bookmarkImage: "zenitzu", animeTitle: "Zenitzu No Yaiba", animeDec: "once upon a time there is a boy name zenitzu dasjndajf asfaf ajs fasj fajs ")
//    ]
//
//    //func
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return dataBookmark.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let bookmark = dataBookmark[indexPath.row]
//
//        let bookmarkCell = bookmarkTable.dequeueReusableCell(withIdentifier: "bookmarkCell", for: indexPath) as! BookmarkTableViewCell
//
//        bookmarkCell.AnimeTitle.text = bookmark.animeTitle
//        bookmarkCell.AnimeDec.text = bookmark.animeDec
//        bookmarkCell.BookmarkImageCell.image = UIImage(named: bookmark.bookmarkImage)
//
//        return bookmarkCell
//
//    }
//
//    //for go to clips
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        let AnimeDetailStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//        let bookmark = dataBookmark[indexPath.row]
//
//        if let decVC = AnimeDetailStoryboard.instantiateViewController(withIdentifier: "ClipsDetailViewController") as? ClipsDetailViewController {
//
//            decVC.TitlePindahan.text = bookmark.animeTitle
//            decVC.TextPindahan.text = bookmark.animeDec
//            decVC.ImagePindahan = UIImage(named: bookmark.bookmarkImage)!
//
//            self.navigationController?.pushViewController(decVC, animated: true)
//
//    }
//
////        decVC.ImagePindahan = UIImage(named: RecomendedCellImages[indexPath.row].image)!
////        decVC.titlePindahan.text = DataAnime.judul
////        decVC.DecPindahan.text = DataAnime.dec
//
//    }
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        title = "Bookmark"
//        //bookmarkTable.dataSource = self
//    }
//
//}
