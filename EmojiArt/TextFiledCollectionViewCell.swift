//
//  TextFiledCollectionViewCell.swift
//  EmojiArt
//
//  Created by Svitlana Dzyuban on 29/8/18.
//  Copyright © 2018 Lana Dzyuban. All rights reserved.
//

import UIKit

class TextFiledCollectionViewCell: UICollectionViewCell, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField! {
        didSet {
            textField.delegate = self
        }
    }

    var resignationHandler: (() -> Void)?

    func textFieldDidEndEditing(_ textField: UITextField) {
        resignationHandler?()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
