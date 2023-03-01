//
//  HistoryManagerProtocol.swift
//  Calculator-iOS
//
//  Created by Konstantin Cherkashin on 06.10.2022.
//  Copyright © 2022 Grid Dynamics. All rights reserved.
//

import Foundation

protocol HistoryManagerProtocol {
    func record(_ string: String)
    func operationHistory() -> [String]
}
