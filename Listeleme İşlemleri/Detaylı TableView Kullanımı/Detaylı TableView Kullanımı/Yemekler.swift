//
//  Yemekler.swift
//  Detaylı TableView Kullanımı
//
//  Created by Gizem Coşkun on 5.09.2022.
//

import Foundation

class Yemekler {
     
    var yemekId: Int?
    var yemekAdi: String?
    var yemekResimAdi: String?
    var yemekFiyat: Double?
    
    init(){
        
    }
    
    init(yemekId: Int,yemekAdi: String, yemekResimAdi: String,yemekFiyat: Double) {
        
        self.yemekId = yemekId
        self.yemekAdi = yemekAdi
        self.yemekResimAdi = yemekResimAdi
        self.yemekFiyat = yemekFiyat
        
    }
}
