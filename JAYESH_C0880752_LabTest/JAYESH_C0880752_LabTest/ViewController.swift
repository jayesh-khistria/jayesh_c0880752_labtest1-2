//
//  ViewController.swift
//  JAYESH_C0880752_LabTest
//
//  Created by Jayesh Khistria on 2022-11-04.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var minTimerlbl: UILabel!
    @IBOutlet weak var secTimerLbl: UILabel!
    
    @IBOutlet weak var startbutton: UIButton!
    @IBOutlet weak var stopbutton: UIButton!
    @IBOutlet weak var lapbutton: UIButton!
    
    
    @IBOutlet weak var tableview: UITableView!
    
    var lapmin = "0"
    var lapsec = "0"
    
    
    
    var timer = Timer()
    var time: Int = 0
    var running:Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func startBtn() {
        if running {
            return
        } else {
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timerDidEnd), userInfo: nil, repeats: true)
            running = true
            startbutton.setTitle("STOP", for: .normal)
            //startbutton.resignFirstResponder()
        }
        
    }
    
    @IBAction func stopBtn() {
       timer.invalidate()
       running = false
    }
    
    
    @IBAction func lapBtn() {
        lapmin = minTimerlbl.text!
        lapsec = secTimerLbl.text!
        
    }
    //func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    //}
    
   // func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    //}
    
    
    @objc func timerDidEnd() {
        time += 1
        timercal()
    }
    
    func timercal() {
        
        var min: Int
        var sec: Int
        
       
        min = (time/60)%60
        sec = time & 60
        
       
        minTimerlbl.text = String(min)
        secTimerLbl.text = String(sec)
    }
}

