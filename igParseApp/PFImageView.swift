//
//  PFImageView.swift
//  igParseApp
//
//  Created by paul on 9/21/18.
//  Copyright © 2018 PoHung Wang. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class InstagramPostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var photoView: PFImageView!
    
    var instagramPost: PFObject! {
        didSet {
            self.photoView.file = instagramPost["image"] as? PFFile
            self.photoView.loadInBackground()
        }
    }
}
