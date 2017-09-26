//
//  ParkBenchTimer.swift
//  ExampleProject
//
//  Created by wani.kim on 2017. 9. 25..
//  Copyright © 2017년 wani.kim. All rights reserved.
//
import Foundation
import CoreFoundation

enum ParkBenchTimer {
    private static var dictionary: [String: ParkBenchTimerObject] = [:]

    static func start(by identifier: String) {
        let timer = ParkBenchTimerObject()
        dictionary[identifier] = timer
    }

    static func stop(by identifier: String) {
        guard let timer = dictionary.removeValue(forKey: identifier) else { return }
        let test = NSString(format: "time: %2.5f", timer.stop())
        print("\n\nParkBenchTimer-\(identifier): \(test)\n\n")
    }
}

final class ParkBenchTimerObject {

    let startTime:CFAbsoluteTime
    var endTime:CFAbsoluteTime?

    init() {
        startTime = CFAbsoluteTimeGetCurrent()
    }

    func stop() -> CFAbsoluteTime {
        endTime = CFAbsoluteTimeGetCurrent()

        return duration!
    }

    var duration:CFAbsoluteTime? {
        if let endTime = endTime {
            return endTime - startTime
        } else {
            return nil
        }
    }
}
