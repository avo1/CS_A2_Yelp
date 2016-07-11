//
//  SwitchCell.swift
//  Yelp
//
//  Created by Dave Vo on 7/10/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SwitchCellDelegate {
    optional func switchCell(switchCell: SwitchCell, didChangeValue value: Bool)
}

class SwitchCell: UITableViewCell {
    
    
    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var switchButton: UISwitch!
    
    weak var delegate: SwitchCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        switchButton.addTarget(self, action: #selector(SwitchCell.onValueChanged), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    func onValueChanged() {
        print("switch changed to \(switchButton.on)")
        delegate?.switchCell?(self, didChangeValue: switchButton.on)
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
