//
//  ViewController.swift
//  customCellTableView
//
//  Created by Gizem Coşkun on 4.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var kisilerTableView: UITableView!

    var kisilerListe = [Kisiler]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        kisilerTableView.delegate = self
        kisilerTableView.dataSource = self
        
        let k1 = Kisiler(kisiId: 1, kisiAd: "Gizem", kisiTel: "04728394037")
        let k2 = Kisiler(kisiId: 2, kisiAd: "İrem", kisiTel: "847385938293")
        let k3 = Kisiler(kisiId: 3, kisiAd: "Hülya", kisiTel: "84930593820")
        let k4 = Kisiler(kisiId: 4, kisiAd: "Yeşim", kisiTel: "95049382847")
        let k5 = Kisiler(kisiId: 5, kisiAd: "Yağmur", kisiTel: "0574899502")
        
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
        kisilerListe.append(k4)
        kisilerListe.append(k5)
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource,TableViewHucreProtocol {
    
    func hucreUzerindekiButtonTiklandi(indexPath: IndexPath) {
        print("Button Tiklandi: \(kisilerListe[indexPath.row].kisiAd!)")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let gelenKisi = kisilerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "kisilerHucre", for: indexPath) as! TableViewHucre
        
        cell.kisiAdLabel.text = "\(gelenKisi.kisiAd!) - \(gelenKisi.kisiTel!)"
        
        cell.hucreProtocol = self
        
        cell.indexPath = indexPath
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let gelenKisi = kisilerListe[indexPath.row]
        
        print("ID: \(gelenKisi.kisiId!) Ad: \(gelenKisi.kisiAd!) Tel: \(gelenKisi.kisiTel!)")
    }
}

