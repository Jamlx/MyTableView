//
//  HardwareItems.swift
//  MyTableView
//
//  Created by James Cavanaugh on 10/31/19.
//  Copyright © 2019 James Cavanaugh. All rights reserved.
//

import UIKit

class HardwareItems: NSObject {
    let names: [String] = [
        "Framing Hammer", "Flat Head Screw Driver",
        "Philips Head Screw Driver", "Drill",
        "Hand Saw", "Pry Bar",
        "Box end Wrench", "Open End Wrench",
        "1/2 inch sockets", "3/8 inch sockets",
        "1/4 inch sockets", "1/2 inch socket wrech",
        "3/8 inch socket wrench", "1/4 inch socket wrench",
        "1/2 inch extension", "1/4 inch extension",
        "3/8 inch extension", "Drill Bits"
    ]
    
    let prices:[Double] = [
        8.99, 5.49,
        5.45, 12.45,
        4.75, 4.65,
        5.35, 5.00,
        16.60, 20.25,
        30.35, 3.25,
        3.50, 9.75,
        1.25, 1.25,
        3.50, 29.75
    ]
    
    let specials:[Bool] = [
        false, true,
        false, false,
        false, false,
        true, false,
        false, true,
        false, false,
        false, true,
        false, false,
        true, false
    ]

}
