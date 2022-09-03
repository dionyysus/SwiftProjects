//
//  ViewController.swift
//  Coklu Table View Aynı View Control
//
//  Created by Gizem Coşkun on 3.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableViewUlkeler: UITableView!
    @IBOutlet var tableViewSehirler: UITableView!
    
    var ulkeler:[String] = [String]()
    var sehirler:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ulkeler = ["Türkiye", "Almanya", "İtalya","Fransa"]
        sehirler = ["İstanbul", "Ankara", "Bursa", "Adana"]
        
        tableViewUlkeler.delegate = self
        tableViewUlkeler.dataSource = self
        
        tableViewSehirler.delegate = self
        tableViewSehirler.dataSource = self
    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var veriSayisi: Int?
        
        if tableView == tableViewUlkeler {
            veriSayisi = ulkeler.count
        }
        if tableView == tableViewSehirler{
            veriSayisi = sehirler.count
        }
        return veriSayisi!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell?
        
        if tableView == tableViewUlkeler {
            
            cell = tableView.dequeueReusableCell(withIdentifier: "ulkelerHucre", for: indexPath)
            
            cell?.textLabel?.text = ulkeler[indexPath.row]
        }
        if tableView == tableViewSehirler{

            cell = tableView.dequeueReusableCell(withIdentifier: "[sehirlerHucre", for: indexPath)
            
            cell?.textLabel?.text = sehirler[indexPath.row]
        }
        
        return cell!
    }
    
   
}
