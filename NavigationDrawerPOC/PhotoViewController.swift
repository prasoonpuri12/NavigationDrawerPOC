//
//  PhotoViewController.swift
//  NavigationDrawerPOC
//
//  Created by Prasoon Puri on 11/24/15.
//  Copyright (c) 2015 Prasoon Puri. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var sideBarButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            sideBarButton.target = self.revealViewController()
            sideBarButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
