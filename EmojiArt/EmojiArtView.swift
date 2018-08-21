//
//  EmojiArtView.swift
//  EmojiArt
//
//  Created by Svitlana Dzyuban on 21/8/18.
//  Copyright © 2018 Lana Dzyuban. All rights reserved.
//

import UIKit

class EmojiArtView: UIView {

    var backgroundImage: UIImage? { didSet { setNeedsDisplay() } }
    override func draw(_ rect: CGRect) {
        backgroundImage?.draw(in: bounds)
    }
}
