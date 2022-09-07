//
//  ViewController.swift
//  Detaylı Collection View
//
//  Created by Gizem Coşkun on 7.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var FilmCollectionView: UICollectionView!
    
    var filmlerListesi = [Filmler]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        FilmCollectionView.delegate = self
        FilmCollectionView.dataSource = self
        
        let f1 = Filmler(filmdId: 1, filmBaslik: "Django", filmResimAdi: "django", filmFiyat: 15.99)
        let f2 = Filmler(filmdId: 2, filmBaslik: "Inception", filmResimAdi: "inception", filmFiyat: 15.99)
        let f3 = Filmler(filmdId: 3, filmBaslik: "Intersteller", filmResimAdi: "intersteller", filmFiyat: 15.99)
        let f4 = Filmler(filmdId: 4, filmBaslik: "Anadoluda", filmResimAdi: "birzamanlaranadoluda", filmFiyat: 15.99)
        let f5 = Filmler(filmdId: 5, filmBaslik: "The Hateful Eight", filmResimAdi: "thehatefuleight", filmFiyat: 15.99)
        let f6 = Filmler(filmdId: 6, filmBaslik: "The Pianist", filmResimAdi: "thepianist", filmFiyat: 15.99)

        filmlerListesi.append(f1)
        filmlerListesi.append(f2)
        filmlerListesi.append(f3)
        filmlerListesi.append(f4)
        filmlerListesi.append(f5)
        filmlerListesi.append(f6)
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filmlerListesi.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let film = filmlerListesi[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmHucre", for: indexPath) as! FilmHucre
        
        cell.filmAdiLabel.text = film.filmBaslik!
        cell.filmFiyatLabel.text = "\(film.filmFiyat!) TL"
        cell.filmImageView.image = UIImage(named: film.filmResimAdi!)
        
        return cell
        
    }
}


