//
//  BinaryTableViewCell.swift
//  binaryCounter
//
//  Created by Stacey Abbott on 11/19/17.
//  Copyright © 2017 Stacey Abbott. All rights reserved.
//

import UIKit

protocol BinaryTableViewDelegate: class {
    func valueChangedBy(value: Int)
}

class BinaryTableViewCell: UITableViewCell {
    
    weak var delegate: BinaryTableViewDelegate?
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBAction func valueButtonPressed(_ sender: UIButton) {
        var value = Int(valueLabel!.text!)
        if sender.titleLabel!.text == "-" {
            value = -value!
        }
        
        delegate?.valueChangedBy(value: value!)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   

}
