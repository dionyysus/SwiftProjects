//
//  SonucEkrani.swift
//  SayıTahminEt
//
//  Created by Gizem Coşkun on 3.09.2022.
//

import UIKit

class SonucEkrani: UIViewController {

    @IBOutlet var labelSonuc: UILabel!
    @IBOutlet var imageViewSonuc: UIImageView!
    
    var sonuc: Bool?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.hidesBackButton = true
        
        self.navigationItem.title = "Sonuç Ekranı"
        
        print(sonuc!)
        
        if sonuc! {
            labelSonuc.text = "Kazandınız"
            imageViewSonuc.image = UIImage(named: "mutlu_resim")
        }else{
            labelSonuc.text = "Kaybettiniz"
            imageViewSonuc.image = UIImage(named: "uzgun_resim")
        }

    }
    

    @IBAction func tekrarOyna(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
