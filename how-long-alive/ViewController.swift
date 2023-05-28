//
//  ViewController.swift
//  how-long-alive
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var daysAliveLbl: UILabel!
    private var numberOfDays: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        daysAliveLbl.text = ""
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let currentDate = Date()
        
        if sender.date <= currentDate {
            let dateComponents = Calendar.current.dateComponents([.day], from: sender.date, to: currentDate)
            let numberOfDays = dateComponents.day ?? 0
            self.numberOfDays = "\(numberOfDays) day(s)"
        } else {
            numberOfDays = "ahead of the current time."
        }
    }
     
    @IBAction func resultBtnTapped() {
        daysAliveLbl.text = "You are alive \(numberOfDays)"
    }
    
}
