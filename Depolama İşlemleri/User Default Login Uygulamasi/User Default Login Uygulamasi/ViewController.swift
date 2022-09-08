//
//  ViewController.swift
//  User Default Login Uygulamasi
//
//  Created by Gizem Coşkun on 8.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFieldKullaniciAdi: UITextField!
    @IBOutlet var textFieldSifre: UITextField!
    
    let d = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let kullaniciAdi = d.string(forKey: "kullaniciAdi") ?? "bos"
        let sifre = d.string(forKey: "sifre") ?? "bos"
        
        if kullaniciAdi != "bos" && sifre != "bos" {
            performSegue(withIdentifier: "girisToAnasayfa", sender: nil)
        }

    }

    @IBAction func girisYap(_ sender: Any) {
        
        if let ka = textFieldKullaniciAdi.text, let s = textFieldSifre.text {
            
            if ka == "admin" && s == "123456" {
                d.set(ka, forKey: "kullaniciAdi")
                d.set(s, forKey:"sifre")
                performSegue(withIdentifier: "girisToAnasayfa", sender: nil)

            }else{
                print("Hatalı Giriş")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
}

