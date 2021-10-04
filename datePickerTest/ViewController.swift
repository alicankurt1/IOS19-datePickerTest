//
//  ViewController.swift
//  datePickerTest
//
//  Created by Alican Kurt on 3.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.backgroundColor = .white
        datePicker.minimumDate = Date()
        datePicker.locale = NSLocale(localeIdentifier: "en_GB") as Locale
        
        stackView.isHidden = true
    
    }
    
    //print(datePicker.date)

    @IBAction func buttonClicked(_ sender: Any) {
        stackView.isHidden = false
    }
    
    @IBAction func doneClicked(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd , HH:mm"
        dateFormatter.timeZone = .current
        let currentDate = dateFormatter.string(from: datePicker.date)
        print(datePicker.date)
        print(Date().description(with: .current))
        
        print(type(of: datePicker.date))
        
        let date1 = Date()
        var dateComponent = DateComponents()
        dateComponent.day = 7
        
        let futureDate = Calendar.current.date(byAdding: dateComponent, to: date1)
        print(futureDate)
        print(type(of: futureDate))
        
        
        let difference = Calendar.current.dateComponents([.day], from: date1, to: futureDate!).day
        print(difference)
        print(type(of: difference))
        
        
        firstButton.setTitle(currentDate, for: .normal)
        stackView.isHidden = true
    }
    
    
}




