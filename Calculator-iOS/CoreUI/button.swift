//
//  Button.swift
//  Calculator-iOS
//
//  Created by Jorge Guillén on 19/09/22.
//  Copyright © 2022 Grid Dynamics. All rights reserved.
//

import Foundation
import UIKit

struct buttonViewModel {
    let primaryText: String
}

final class NumberPadButton: UIButton {
    private let primaryLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .systemBlue
        label.font = UIFont(name: "Poppins-Medium", size: 32)
        label.frame = CGRect(x: 0, y: 0, width: 21, height: 48)
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(primaryLabel)
        clipsToBounds = true
        layer.cornerRadius = 16
        layer.borderWidth = 62
        layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        backgroundColor = .systemBackground
    }
    
    required init?(coder: NSCoder) {
        return nil
    }
    func configure(with viewModel: buttonViewModel) {
        primaryLabel.text = viewModel.primaryText
       
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        primaryLabel.frame = CGRect(x: 0, y: 0, width: 21, height: 48)
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 48).isActive = true
        widthAnchor.constraint(equalToConstant: 21).isActive = true
    }
}
