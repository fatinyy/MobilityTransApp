//
//  ViewController.swift
//  MobilityTransApp
//
//  Created by aifara on 01/05/2024.
//

import UIKit
import SwiftDate


class ViewController: UIViewController {

    @IBOutlet weak var startDateTextField: UITextField!

    @IBOutlet weak var endDateTextField: UITextField!
    
    @IBOutlet weak var mIDTextField: UITextField!
    
    var startDatePicker:UIDatePicker!
    
    var endDatePicker:UIDatePicker!
    
    var startDate:String?
    
    var endDate:String?
    
    var dateFormatter = DateFormatter()
    
    var dateFormatterSql = DateFormatter()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        dateFormatterSql.dateFormat = "yyyy-MM-dd"
        dateFormatter.dateFormat = "dd MMM yyyy"
        self.addDatePicker()
        self.startDateTextField.placeholder = ""
        self.endDateTextField.placeholder = ""
        

    }
    
    func addDatePicker(){
              
        startDateTextField.endEditing(true)
        endDateTextField.endEditing(true)
                     
              if #available(iOS 14.0, *) {
                         startDatePicker = UIDatePicker(frame: CGRect(x: -120, y: 0, width: 250, height: 200))
                         startDatePicker.maximumDate = Date(timeIntervalSinceNow: 0)
                         startDatePicker.datePickerMode = .date
         
                         self.dateFormatter.dateFormat =  "dd MMM yyyy"
                         self.startDateTextField.text = ""
                         self.startDateTextField.addSubview(startDatePicker)
                         self.startDate = self.dateFormatter.string(from: startDatePicker.date)
                  
                          endDatePicker = UIDatePicker(frame: CGRect(x: -120, y: 0, width: 250, height: 200))
                          endDatePicker.maximumDate = Date(timeIntervalSinceNow: 0)
                          endDatePicker.datePickerMode = .date
          
                          self.endDateTextField.text = ""
                          self.endDateTextField.addSubview(endDatePicker)
                          self.endDate = self.dateFormatter.string(from: endDatePicker.date)
       
                     }
              
          }


}




