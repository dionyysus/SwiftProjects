//
//  AnasayfaVC.swift
//  User Default Login Uygulamasi
//
//  Created by Gizem Coşkun on 8.09.2022.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet var labelSonuc: UILabel!
    
    let d = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        let ka = d.string(forKey: "kullaniciAdi") ?? "bos"
        
        labelSonuc.text = ka
    }
    

    
    @IBAction func cikisYap(_ sender: Any) {
        
        d.removeObject(forKey: "kullaniciAdi")
        d.removeObject(forKey: "sifre")
        
        exit(-1)
        
    }
    
}
