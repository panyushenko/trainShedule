//
//  TrainSearchController.swift
//  trainShedule
//
//  Created by Panyushenko on 09.04.2018.
//  Copyright © 2018 Artyom Panyushenko. All rights reserved.
//

import UIKit

class TrainSearchController: UIViewController {

    @IBOutlet weak var datePickerForTrainTimetable: UIDatePicker!
    @IBOutlet weak var dateFromDatePickerLabel: UILabel!
    
    @IBOutlet weak var departureStation: UITextField!
    @IBOutlet weak var destinationStation: UITextField!
    
    lazy var dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .long
        return dateFormatter
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureDatePicker()
        
        departureStation.delegate = self
        destinationStation.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureDatePicker() {
        datePickerForTrainTimetable.datePickerMode = .date
        
        let now = Date()
        datePickerForTrainTimetable.minimumDate = now

        datePickerForTrainTimetable.addTarget(self, action: #selector(TrainSearchController.updateDatePickerLabel), for: .valueChanged)
        
        updateDatePickerLabel()
    }
    
    @objc
    func updateDatePickerLabel() {
        dateFromDatePickerLabel.text = dateFormatter.string(from: datePickerForTrainTimetable.date)
    }
}

extension TrainSearchController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        departureStation.resignFirstResponder()
        destinationStation.resignFirstResponder()
        return false
    }
}
