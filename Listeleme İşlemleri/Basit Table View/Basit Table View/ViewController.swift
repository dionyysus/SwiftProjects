//
//  ViewController.swift
//  Basit Table View
//
//  Created by Gizem Coşkun on 3.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var ulkeler:[String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        ulkeler = ["Türkiye", "Almanya", "Rusya", "Fransa", "İtalya", "Güney Kore",
        "Hindistan","Mısır"]
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ulkeler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreadi", for: indexPath)
        
        cell.textLabel?.text = ulkeler[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Seçilen ülke: \(ulkeler[indexPath.row])")
    }
    
    /* eski kodlama yapısı
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let silAction = UITableViewRowAction(style: .default, title: "Sil", handler: {
            (action: UITableViewRowAction, indexPath: IndexPath) -> Void in
            print("\(self.ulkeler[indexPath.row]) yi sil")
        })
        
        let duzenleAction = UITableViewRowAction(style: .normal, title: "Düzenle", handler: {
            (action: UITableViewRowAction, indexPath: IndexPath) -> Void in
            print("\(self.ulkeler[indexPath.row]) yi duzenle")
        })
        
        return [silAction,duzenleAction]
       
    }*/
    
    //yeni kodlama yapısı
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let silAction = UIContextualAction(style: .destructive, title: "Sil") {
            (contextualAction, view, boolValue) in
            print ("\(self.ulkeler[indexPath.row]) yi sil")
        }
        
        let duzenleAction = UIContextualAction(style: .normal, title: "Düzenle") {
            (contextualAction, view, boolValue) in
            print ("\(self.ulkeler[indexPath.row]) yi düzenle")
        }
        
        return UISwipeActionsConfiguration(actions: [silAction, duzenleAction])
    }
    
}
