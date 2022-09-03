//
//  TahminEkrani.swift
//  SayıTahminEt
//
//  Created by Gizem Coşkun on 3.09.2022.
//

import UIKit

class TahminEkrani: UIViewController {

    @IBOutlet var labelKalanHak: UILabel!
    @IBOutlet var textFieldGirdi: UITextField!
    @IBOutlet var labelYardim: UILabel!
    
    var rastgeleSayi: Int?
    var kalanHak = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rastgeleSayi = Int(arc4random_uniform(100)) // 0-100 arası sayi üretir
        /*rastgeleSayi = Int.random(in: 0...100)*/ // bu sekilde de 0-100 arasinda int donusumu yapmadan sayi uretebiliriz.
        
       print("Rastgele sayi:  \(rastgeleSayi!)")
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gelenVeri = sender as? Bool {
            
            let gidilecekVC = segue.destination as! SonucEkrani
            
            gidilecekVC.sonuc = gelenVeri
        }
    }
    
    @IBAction func tahminEt(_ sender: Any) {
        labelYardim.isHidden = false
        kalanHak-=1
        
        if let veri = textFieldGirdi.text{
            if let tahmin = Int(veri){
                
                if kalanHak != 0{
                    
                    if tahmin == rastgeleSayi!{
                        //doğru bildiniz
                        //sayfa geçişi
                        let sonuc = true
                        performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                    }
                    if tahmin > rastgeleSayi!{
                        // azaltması gerektiğini söylemeliyiz
                        labelYardim.text =  "Azalt"
                        labelKalanHak.text = "Kalan Hak: \(kalanHak)"
                    }
                    if tahmin < rastgeleSayi!{
                        // arttırması gerektiğini söylemeliyiz
                        labelYardim.text = "Arttır"
                        labelKalanHak.text = "Kalan Hak: \(kalanHak)"

                    }
                }else{
                    //sayfa geçişi olacak
                    let sonuc = false
                    performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                }
                
                textFieldGirdi.text = ""
            }
        }
    }
    
}
