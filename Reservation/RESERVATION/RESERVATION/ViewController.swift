//
//  ViewController.swift
//  RESERVATION
//
//  Created by Maitri Mehta on 8/19/17.
//  Copyright © 2017 Maitri Mehta. All rights reserved.
//

import UIKit
//import IoniconsSwift
class ViewController: UIViewController {
    
    @IBOutlet weak var viewBorder: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //adding border to the view
//        viewBorder.layer.borderWidth = 1
//        viewBorder.layer.borderColor = UIColor.gray.cgColor
        
//        let plusIcon = UIImage(named: "ion-plus-round.png")
//        let imageView = UIImageView(image:plusIcon)
//        self.navigationItem.titleView = imageView
//        let button = UIButton.init(type: .custom)
//        button.setImage(UIImage.init(named: "plus.png"), for: UIControlState.normal)
//        button.addTarget(self, action:#selector(self.callMethod), for: UIControlEvents.touchUpInside)
//        button.frame = CGRect.init(x: 0, y: 0, width: 30, height: 30) //CGRectMake(0, 0, 30, 30)
//        let barButton = UIBarButtonItem.init(customView: button)
//        self.navigationItem.leftBarButtonItem = barButton
//
        // Square UIImage of an icon.
//        let image = Ionicons.alert.image(35)
//        let image = Ionicons.iosClock.image(35, color: UIColor.greenColor())

    }
    @objc func callMethod() {
        //do stuff here
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

