//
//  TrainSheduleViewController.swift
//  trainShedule
//
//  Created by Panyushenko on 11.04.2018.
//  Copyright © 2018 Artyom Panyushenko. All rights reserved.
//

import UIKit

class TrainSheduleViewController: UIViewController {
    @IBOutlet weak var departureStationOnTrainSheduleViewController: UILabel!
    @IBOutlet weak var destinationStationOnTrainSheduleViewController: UILabel!
    @IBOutlet weak var dateOfTheTrainSearchOnTrainViewSheduleViewController: UILabel!
    
    var departureStationNameOnTrainSheduleViewController: String?
    var destinationStationNameOnTrainSheduleViewController: String?
    var dateNameOnTrainSheduleViewController: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        departureStationOnTrainSheduleViewController.text = departureStationNameOnTrainSheduleViewController
        destinationStationOnTrainSheduleViewController.text = destinationStationNameOnTrainSheduleViewController
        dateOfTheTrainSearchOnTrainViewSheduleViewController.text = dateNameOnTrainSheduleViewController
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension TrainSheduleViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrainSheduleCell", for: indexPath) as! TrainSheduleTableViewCell
        tableView.backgroundColor = .gray
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 3
        cell.layer.cornerRadius = 15
        cell.clipsToBounds = true
        return cell
    }
}
