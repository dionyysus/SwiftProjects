//
//  ViewController.swift
//  Date and Time Picker
//
//  Created by Gizem Coşkun on 3.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var texttFieldTarih: UITextField!
    @IBOutlet var textFieldSaat: UITextField!
    
    var datePicker:UIDatePicker?
    var timePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        texttFieldTarih.inputView = datePicker
        
        //time picker codes
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        textFieldSaat.inputView = timePicker
        
        datePicker?.addTarget(self, action: #selector(self.tarihGoster(datePicker:)), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(self.saatGoster(timePicker:)), for: .valueChanged)
    
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector
                                                     (self.dokunmaAlgilamaMetodu))
    
        view.addGestureRecognizer(dokunmaAlgilama)
    }


    @objc func tarihGoster(datePicker: UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yy"
        let alinanTarih = dateFormatter.string(from: datePicker.date)
        
        texttFieldTarih.text = alinanTarih
        
    }
    
    @objc func saatGoster(timePicker: UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        
        let alinanSaat = dateFormatter.string(from: timePicker.date)
        textFieldSaat.text = alinanSaat
    }
    
    @objc func dokunmaAlgilamaMetodu(){
        view.endEditing(true)
    }
}

