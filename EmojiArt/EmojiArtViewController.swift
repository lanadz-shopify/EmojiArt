//
//  EmojiArtViewController.swift
//  EmojiArt
//
//  Created by Svitlana Dzyuban on 21/8/18.
//  Copyright © 2018 Lana Dzyuban. All rights reserved.
//

import UIKit

class EmojiArtViewController: UIViewController, UIDropInteractionDelegate {

    @IBOutlet weak var dropZone: UIView! {
        didSet {
            dropZone.addInteraction(UIDropInteraction(delegate: self))
        }

    }
    @IBOutlet weak var emojiArtView: EmojiArtView!

    func dropInteraction(_ interaction: UIDropInteraction, canHandle session: UIDropSession) -> Bool {
        return session.canLoadObjects(ofClass: NSURL.self) && session.canLoadObjects(ofClass: UIImage.self)
    }

    func dropInteraction(_ interaction: UIDropInteraction, sessionDidUpdate session: UIDropSession) -> UIDropProposal {
        return UIDropProposal(operation: .copy)
    }

    func dropInteraction(_ interaction: UIDropInteraction, performDrop session: UIDropSession) {
        session.loadObjects(ofClass: NSURL.self, completion: { nsuirls in

        })

        session.loadObjects(ofClass: UIImage.self, completion: { images in

        })
    }
}
