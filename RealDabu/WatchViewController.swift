//
//  ViewController.swift
//  RealDabu
//
//  Created by I Gede Bagus Wirawan on 06/04/22.
//

import UIKit

class WatchViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == collectionView.viewWithTag(1) {
            return ClipsCellImages.count
        } else {
            return RecomendedCellImages.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
            if collectionView == collectionView.viewWithTag(1) {
            
            let clipsCell = collectionView.dequeueReusableCell(withReuseIdentifier: "clipsCell", for: indexPath) as! ClipsCVCell
            
                clipsCell.ClipsImage.image=UIImage(named: ClipsCellImages[indexPath.row].image)
            clipsCell.ClipsImage.layer.cornerRadius = 10.0
            
            return clipsCell
                
        } else {
            
            let animeCell = collectionView.dequeueReusableCell(withReuseIdentifier: "animeCell", for: indexPath) as! ClipsCVCell
            
            animeCell.ClipsImage.image=UIImage(named: RecomendedCellImages[indexPath.row].image)
            animeCell.ClipsImage.layer.cornerRadius = 10.0
            
            return animeCell
        }
            
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == collectionView.viewWithTag(1) {
            
            let AnimeDetailStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let decVC = AnimeDetailStoryboard.instantiateViewController(withIdentifier: "ClipsDetailViewController") as! ClipsDetailViewController
            
            decVC.ImagePindahan = UIImage(named: ClipsCellImages[indexPath.row].image)!
            decVC.TitlePindahan.text = ClipsCellImages[indexPath.row].judul
            decVC.TextPindahan.text = ClipsCellImages[indexPath.row].text
            
            self.navigationController?.pushViewController(decVC, animated: true)
        } else {
            
            let DataAnime = RecomendedCellImages[indexPath.row]
            
            let AnimeDetailStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let decVC = AnimeDetailStoryboard.instantiateViewController(withIdentifier: "AnimeDetailViewController") as! AnimeDetailViewController
            
            decVC.ImagePindahan = UIImage(named: RecomendedCellImages[indexPath.row].image)!
            decVC.titlePindahan.text = DataAnime.judul
            decVC.DecPindahan.text = DataAnime.dec

            
            self.navigationController?.pushViewController(decVC, animated: true)
        }
        
    }
    
    struct AnimeData {
        let judul : String
        let image : String
        let dec : String
    }

    let RecomendedCellImages: [AnimeData] = [
        AnimeData(judul: "Naruto", image: "naruto", dec: "Naruto is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki, a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village."),
        AnimeData(judul: "SAO", image: "sao", dec: "Sword Art Online is a Japanese light novel series written by Reki Kawahara and illustrated by abec. The series takes place in the near future and focuses on protagonists Kazuto (Kirit Kirigaya and Asuna Yuuki as they play through various virtual reality MMORPG worlds."),
        AnimeData(judul: "Silent", image: "silent", dec: "When a grade school student with impaired hearing is bullied mercilessly, she transfers to another school. Years later, one of her former tormentors sets out to make amends."),
        AnimeData(judul: "Naruto", image: "naruto", dec: "Naruto is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki, a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village."),
        AnimeData(judul: "SAO", image: "sao", dec: "Sword Art Online is a Japanese light novel series written by Reki Kawahara and illustrated by abec. The series takes place in the near future and focuses on protagonists Kazuto (Kirito) Kirigaya and Asuna Yuuki as they play through various virtual reality MMORPG worlds."),
        AnimeData(judul: "Silent", image: "silent", dec: "When a grade school student with impaired hearing is bullied mercilessly, she transfers to another school. Years later, one of her former tormentors sets out to make amends."),
//        AnimeData(judul: "Naruto", image: #imageLiteral(resourceName: "naruto.jpg")),
//        AnimeData(judul: "SAO", image: #imageLiteral(resourceName: "sao")),
//        AnimeData(judul: "Silent", image: #imageLiteral(resourceName: "silent")),
    ]
    
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
    
    
    //var ClipsCellImages: [String] = ["kimetsu", "rengoku_gas", "rengoku_smile", "nezuko", "zenitzu"]
    //var RecomendedCellImages: [String] = ["naruto", "sao", "silent","naruto", "sao", "silent"]


    
    override func viewDidLoad() {
        super.viewDidLoad()

        //code here
        title = "Watch Now"

    }
    
    //for modal
    @objc func showMiracle() {
            let slideVC = OverlayView()
            slideVC.modalPresentationStyle = .custom
            slideVC.transitioningDelegate = self
            self.present(slideVC, animated: true, completion: nil)
        }
        
    @IBAction func onButton(_ sender: Any) {
        showMiracle()
    }
   
    
    //end modal
    

}

//extension for modal
extension WatchViewController: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        PresentationController(presentedViewController: presented, presenting: presenting)
    }
}

