//
//  ViewController.swift
//  UserDefault Çalışması
//
//  Created by Gizem Coşkun on 8.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let d = UserDefaults.standard
        
        //veri kaydetme-ekleme
        
        d.set("Ahmet", forKey: "ad")
        d.set(18, forKey: "yas")
        d.set(1.78, forKey: "boy")
        d.set(true, forKey: "medeniDurum")

        let arkadasListesi = ["ali", "veysel", "ece"]
        
        d.set(arkadasListesi, forKey: "liste")
        
        
        let sehirlerListesi:[String: String] = ["16" : "Bursa", "34": "İstanbul"]
        
        d.set(sehirlerListesi, forKey: "dict")
        
        //veri okuma
        
        let ad = d.string(forKey: "ad") ?? "isim yok" // iki soru işareti default olarak gelir.
        let yas = d.integer(forKey: "boy")
        let boy = d.double(forKey: "boy")
        let medeniDurum = d.bool(forKey: "medeniDurum")
        
        print(ad)
        print(yas)
        print(boy)
        print(medeniDurum)
        
        let liste = d.array(forKey: "liste") as? [String] ?? [String]()
        print(liste[0])
        
        let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        print(dict["16"]!)

        
        //veri silme
        
        d.removeObject(forKey: "ad")
        
        //sildikten sonra tekrar okuyalım
        let adx = d.string(forKey: "ad") ?? "isim yok"
        print(adx)
        
        //veri guncelleme
        
        d.set(13, forKey: "yas")
        let yasx = d.string(forKey: "yas")
        print(yasx!)
        
    }


}

