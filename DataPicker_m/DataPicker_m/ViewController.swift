//
//  ViewController.swift
//  DataPicker
//
//  Created by 신상용 on 2023/03/01.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let changeColor: Selector = #selector(ViewController.funcChangeColor)
    let interval = 1.0
    var count = 0
    //mission
    var alarmTime:String?
    var alarm:Bool = false
    
    @IBOutlet var IbICurrentTime: UILabel!
    @IBOutlet var IbIPickerTime: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDataPicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        IbIPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
        
        //mission
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
        
    }
    @objc func funcChangeColor() {
        view.backgroundColor = UIColor.white
        alarm = false
    }
    @objc func updateTime() {
//        IbICurrentTime.text = String(count)
//        count = count + 1
        
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
        IbICurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
        
        //mission
        formatter.dateFormat = "hh:mm aaa"
        let currentTime = formatter.string(from: date as Date)
        
        print(alarm)
        print(alarmTime == currentTime)
        if !alarm && alarmTime == currentTime {
            view.backgroundColor = UIColor.red
            alarm = true
            print(alarmTime!, currentTime)
            Timer.scheduledTimer(timeInterval: 60.0, target: self, selector: changeColor, userInfo: nil, repeats: false)
        }
        
        
    }
}

