//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Svitlana Dzyuban on 7/9/18.
//  Copyright © 2018 Lana Dzyuban. All rights reserved.
//

import Foundation

struct EmojiArt {
    var url: URL
    var emojiis = [EmojiInfo]()

    struct EmojiInfo {
        var x: Int
        var y: Int
        var text: String
        var size: Int
    }

    init(url: URL, emojis: [EmojiInfo]) {
        self.url =  url
        self.emojiis = emojis
    }
}
