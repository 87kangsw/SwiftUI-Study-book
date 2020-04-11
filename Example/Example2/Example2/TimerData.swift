//
//  TimerData.swift
//  Example2
//
//  Created by Kanz on 2020/04/11.
//  Copyright © 2020 KanzDev. All rights reserved.
//

import Foundation
import Combine

class TimerData: ObservableObject {
    
    @Published var timeCount: Int = 0
    var timer: Timer?
    
    init() {
        timer = Timer.scheduledTimer(timeInterval: 1.0,
                                     target: self,
                                     selector: #selector(timerDidFire),
                                     userInfo: nil,
                                     repeats: true)
    }
    
    @objc func timerDidFire() {
        timeCount += 1
    }
    
    func resetCount() {
        timeCount = 0
    }
}
