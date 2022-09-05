//
//  Kisiler.swift
//  customCellTableView
//
//  Created by Gizem Coşkun on 4.09.2022.
//

import Foundation

class Kisiler {
    
    var kisiId:Int?
    var kisiAd:String?
    var kisiTel:String?
    
    init() {
        
    }
    
    init(kisiId:Int, kisiAd:String, kisiTel:String) {
        self.kisiId = kisiId
        self.kisiAd = kisiAd
        self.kisiTel = kisiTel
    }
    
}
