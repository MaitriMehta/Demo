//
//  SpaServiceViewController.swift
//  RESERVATION
//
//  Created by Maitri Mehta on 8/22/17.
//  Copyright © 2017 Maitri Mehta. All rights reserved.
//

import UIKit

class SpaServiceViewController: UIViewController ,UIScrollViewDelegate {
    
    @IBOutlet weak var bgImgView: UIImageView!
//    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var pageCtrl: UIPageControl!
    var timer : Timer!
    var counter : Int!
    
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var btnReserve: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 0
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(SpaServiceViewController.updateTimer), userInfo: nil, repeats: true)
        //Title for navigation
        self.navigationItem.title = "SPA SERVICE"
        //Hide the default back button
        self.navigationItem.setHidesBackButton(true, animated:true);

        UINavigationBar.appearance().backgroundColor = UIColor.black
        // Do any additional setup after loading the view.
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        UINavigationBar.appearance().backgroundColor = UIColor(red: 117.0/255, green: 177.0/255, blue: 230.0/255, alpha: 1.0)
    }

    @objc internal func updateTimer()
    {
        if(counter<=2)
        {
            //Image is coming from Assets - extracted from keynote
            pageCtrl.currentPage = counter
//            NSLog(String(counter+1) + ".png")
            bgImgView.image = UIImage(named: String(counter+1) + ".png")
            counter = counter + 1
        }else{
            counter = 0
        }
    }

   // Reserve Button Tapped
    @IBAction func btnReserveTappled(_ sender: Any) {
        if (counter == 2 )
        {
            //For now showing alert for Spa Reservation
            let alert = UIAlertController(title: "RESERVE", message: "SPA SERVICE", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            //Redriect to page 10 with Spa Reservation entry
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
