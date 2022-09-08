//
//  ViewController.swift
//  UserDefault Sayac Uygulamasi
//
//  Created by Gizem Coşkun on 8.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelSayac: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //uygulamala silinene kadar verilerin tutulduğu bir uygulama
        
        let d = UserDefaults.standard
        
        var sayac = d.integer(forKey: "sayac")
        
        sayac = sayac + 1
        
        d.set(sayac, forKey: "sayac")
        
        labelSayac.text = "Sayaç : \(sayac)"
        
    }


}

