//
//  FilmHucre.swift
//  Detaylı Collection View
//
//  Created by Gizem Coşkun on 7.09.2022.
//

import UIKit

protocol FilmHucreProtocol {
    func sepeteEkle(indexPath: IndexPath)
}

class FilmHucre: UICollectionViewCell {
    
    @IBOutlet var filmImageView: UIImageView!
    @IBOutlet var filmAdiLabel: UILabel!
    @IBOutlet var filmFiyatLabel: UILabel!
    
    var hucreProtocol: FilmHucreProtocol?
    var indexPath: IndexPath?
    
   
    @IBAction func sepeteEkleButton(_ sender: Any) {

        hucreProtocol?.sepeteEkle(indexPath: indexPath!)
    }
}
