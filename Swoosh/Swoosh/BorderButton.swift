//
//  BorderButton.swift
//  Swoosh
//
//  Created by Julia Nikitina on 22/08/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

@IBDesignable
final class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpViews()
    }

    override func prepareForInterfaceBuilder() {
        setUpViews()
    }
    
    private func setUpViews() {
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }
}
