//
//  PostCell.swift
//  igParseApp
//
//  Created by paul on 9/25/18.
//  Copyright © 2018 PoHung Wang. All rights reserved.
//
import UIKit
import Parse
import ParseUI

class PostCell: UITableViewCell {
    
    @IBOutlet weak var photoView: PFImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var timestampLabel: UILabel!
    
    var instagramPost: PFObject!{
        didSet{
            authorLabel.text = (instagramPost["author"] as! PFUser).username! as String
            captionLabel.text = instagramPost["caption"] as? String
            photoView.file = instagramPost["media"] as? PFFile
            photoView.loadInBackground()
            if let pastDate = (instagramPost.createdAt){
                timestampLabel.text = pastDate.timeAgoDisplay()
            }
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
