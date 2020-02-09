//
//  File.swift
//  
//
//  Created by Grant van Staden on 2020/02/09.
//

import Foundation

extension TimeInterval {
    /// Extracts housr from this time interval
    var hours: Int {
        get {
           (Int(floor(self)) - (Int(floor(self)) % 3600)) / 3600
        }
    }
    
    /// Extracts the minutes from this time interval.
    var minutes: Int {
        get {
            (Int(floor(self)) % 3600) / 60
        }
    }
    
    /// Extracts seconds from this time interval
    var seconds: Int {
        get {
            (Int(floor(self)) % 3600) - (60 * ((Int(floor(self)) % 3600) / 60))
        }
    }
    
    /// The time format string representation of thie time interval (HH:MM:SS)
    var timeString: String {
        get {
            let hours = self.hours.asLeftPaddedString(ofLength: 2)
            let minutes = self.minutes.asLeftPaddedString(ofLength: 2)
            let seconds = self.seconds.asLeftPaddedString(ofLength: 2)
            return "\(hours):\(minutes):\(seconds)"
        }
    }
}
