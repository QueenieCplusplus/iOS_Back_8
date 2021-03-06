//
//  ViewController.swift
//  KatesThreadsApp
//
//  Created by KatesAndroid on 2021/1/28 AM 10:15
//  multi-threads using Timer class

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        //Timer.scheduledTimer(timeInterval: <#T##TimeInterval#>, invocation: <#T##NSInvocation#>, repeats: <#T##Bool#>)
        
        Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true){
            
            (t) in
            self.timeCounter()
            
        }
        
    }

    func timeCounter(){
        let showTime = DateFormatter()
        showTime.dateFormat = "hh:mm:ss"
        let timeString = showTime.string(from: Date())
        print(timeString)
    }

}

