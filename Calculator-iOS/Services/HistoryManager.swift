//
//  HistoryManager.swift
//  Calculator-iOS
//
//  Created by Konstantin Cherkashin on 06.10.2022.
//  Copyright © 2022 Grid Dynamics. All rights reserved.
//

import Foundation

final class HistoryManager: HistoryManagerProtocol {
    
    private var history: [String] = []
    private let limit = 10
    
    func record(_ string: String) {
        history.append(string)
        if history.count > limit {
            _ = history.removeFirst()
        }
    }
    
    func operationHistory() -> [String] {
        history
    }
}
