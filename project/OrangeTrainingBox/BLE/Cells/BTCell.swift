//
//  BTCell.swift
//  Orange Baah Box
//
//  Copyright (C) 2017 – 2019 Orange SA
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program. If not, see <http://www.gnu.org/licenses/>.
//

import UIKit
import CoreBluetooth

class BTCell: UITableViewCell {

    @IBOutlet weak var checkImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    func configure (with peripheralName: String, shouldShowTick: Bool) {
        
        let text = NSMutableAttributedString(string: peripheralName,
                                             attributes: [NSAttributedString.Key.font:  UIFont.systemFont(ofSize: 20)])
        
        label.attributedText = text
        checkImage.isHidden = !shouldShowTick
        backgroundColor  = UIColor.white
    }
}
