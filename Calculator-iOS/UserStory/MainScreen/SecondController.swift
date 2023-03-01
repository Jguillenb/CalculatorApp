//
//  SecondController.swift
//  Calculator-iOS
//
//  Created by Jorge Guillén on 05/10/22.
//  Copyright © 2022 Grid Dynamics. All rights reserved.
//

import UIKit

class SecondController: UIViewController {
        
    @IBOutlet private weak var tableView: UITableView!
    
    var historyManager: HistoryManagerProtocol!
    
}

extension SecondController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        historyManager.operationHistory().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? HistoryRow else {
            return UITableViewCell()
        }
        cell.label.text = historyManager.operationHistory()[indexPath.row]
        return cell
    }
}
