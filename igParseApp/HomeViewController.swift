//
//  HomeViewController.swift
//  igParseApp
//
//  Created by paul on 9/21/18.
//  Copyright © 2018 PoHung Wang. All rights reserved.
//

import UIKit
import Parse

class HomeViewController: UIViewController {
    /*
    let post = Post()
    
    // get the current user and assign it to "author" field. "author" field is now of Pointer type
    post.author = PFUser.current()
    //includeKey("author")
    
    // construct query
    let predicate = NSPredicate(format: "likesCount > 100")
    var query = Post.query(with: predicate)
    
    // fetch data asynchronously
    query.findObjectsInBackground { (posts: [Post]?, error: Error?) in
    if let posts = posts {
    // do something with the array of object returned by the call
    for post in posts {
    // access the object as a dictionary and cast type
    let likeCount = post.likesCount
    }
    } else {
    print(error?.localizedDescription)
    }
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    
    
    //display recent 20 posts
    func requestPosts() {
        let query = PFQuery(className: "Post")
        query.order(byDescending: "createdAt")
        query.includeKey("author")
        query.limit = 20
        
        
        
        query.findObjectsInBackgroundWithBlock { (posts: [PFObject]?, error: Error?) -> Void in
            if let posts = posts {
                print("successed to fetch posts")
                self.posts = posts
                for i in posts {
                    print (i)
                }
                self.tableView.reloadData()

                
            } else {
                print(error?.localizedDescription)
            }
            } as! ([PFObject]?, Error?) -> Void
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
