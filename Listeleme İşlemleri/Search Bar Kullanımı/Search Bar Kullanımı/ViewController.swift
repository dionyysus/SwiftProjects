//
//  ViewController.swift
//  Search Bar Kullanımı
//
//  Created by Gizem Coşkun on 7.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()

        searchBar.delegate = self
        
        searchBar.scopeButtonTitles = ["Birinci", "İkinci"]

    }


}


extension ViewController: UISearchBarDelegate {
    
    //arama yaptığımızda aradığımız şeyleri tutuyor/gösteriyor
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama sonuc: \(searchText)")
    }
    
    //cancel tusuna bastığımızda çalışıyor
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Cancel seçildi")
    }
    
    //title a bastığımızda çalışıyor
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        if selectedScope == 0 {
            print("Birinci seçildi")
        }
        if selectedScope == 1 {
            print("İkinci seçildi")
        }
    }
}
