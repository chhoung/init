//
//  SampleAPI.swift
//  sample
//      
//  Copyright © 2024 initializing go home machine. All rights reserved.
//  

enum SampleAPI {
    case list
}

extension SampleAPI {
    var endpoint: String {
        switch self {
        case .list: return "characters"
        }
    }
}
