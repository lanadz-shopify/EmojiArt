//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by Svitlana Dzyuban on 7/9/18.
//  Copyright © 2018 Lana Dzyuban. All rights reserved.
//

import Foundation

struct EmojiArt: Codable {
    var url: URL
    var emojiis = [EmojiInfo]()

    struct EmojiInfo: Codable {
        var x: Int
        var y: Int
        var text: String
        var size: Int
    }

    var json: Data? {
        return try? JSONEncoder().encode(self)
    }

    init(url: URL, emojis: [EmojiInfo]) {
        self.url =  url
        self.emojiis = emojis
    }
}
