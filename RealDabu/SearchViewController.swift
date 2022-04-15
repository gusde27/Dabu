//
//  SearchViewController.swift
//  RealDabu
//
//  Created by I Gede Bagus Wirawan on 06/04/22.
//

import UIKit

class SearchViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
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
            
                clipsCell.ClipsImage.image=UIImage(named: RecomendedCellImages[indexPath.row].image)
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
            
            let DataAnime = RecomendedCellImages[indexPath.row]
            
            let AnimeDetailStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            let decVC = AnimeDetailStoryboard.instantiateViewController(withIdentifier: "AnimeDetailViewController") as! AnimeDetailViewController
            
            decVC.ImagePindahan = UIImage(named: RecomendedCellImages[indexPath.row].image)!
            decVC.titlePindahan.text = DataAnime.judul
            decVC.DecPindahan.text = DataAnime.dec
            
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
        AnimeData(judul: "Naruto", image: "naruto", dec: "Naruto is a Japanese manga series written and illustrated by Masashi Kishimoto. It tells the story of Naruto Uzumaki, a young ninja who seeks recognition from his peers and dreams of becoming the Hokage, the leader of his village."),
        AnimeData(judul: "SAO", image: "sao", dec: "Sword Art Online is a Japanese light novel series written by Reki Kawahara and illustrated by abec. The series takes place in the near future and focuses on protagonists Kazuto (Kirito) Kirigaya and Asuna Yuuki as they play through various virtual reality MMORPG worlds."),
        AnimeData(judul: "Silent", image: "silent", dec: "When a grade school student with impaired hearing is bullied mercilessly, she transfers to another school. Years later, one of her former tormentors sets out to make amends."),
//        AnimeData(judul: "Naruto", image: #imageLiteral(resourceName: "naruto.jpg")),
//        AnimeData(judul: "SAO", image: #imageLiteral(resourceName: "sao")),
//        AnimeData(judul: "Silent", image: #imageLiteral(resourceName: "silent")),
    ]

    var ClipsCellImages: [String] = ["kimetsu", "rengoku_gas", "rengoku_smile", "nezuko", "zenitzu"]
    //var RecomendedCellImages: [String] = ["naruto", "sao", "silent","naruto", "sao", "silent"]
    
    
    //for search controller
    let searchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Search"
        
        navigationItem.searchController = searchController
        
    }
    
    

  

}
