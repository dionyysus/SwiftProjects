//
//  TableViewHucre.swift
//  customCellTableView
//
//  Created by Gizem Coşkun on 4.09.2022.
//

import UIKit

protocol TableViewHucreProtocol {
    func hucreUzerindekiButtonTiklandi(indexPath: IndexPath)
}


class TableViewHucre: UITableViewCell {

    @IBOutlet var kisiAdLabel: UILabel!
    

    var hucreProtocol: TableViewHucreProtocol?
    var indexPath: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    @IBAction func buttonTikla(_ sender: Any) {
        
        hucreProtocol?.hucreUzerindekiButtonTiklandi(indexPath: indexPath!)
    }
}
