//
//  FirstViewController.swift
//  SkipDemo
//
//  Created by 繁野怜央 on 2021/04/06.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func defaultTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = self.storyboard!
        let navigationController = storyboard.instantiateViewController(withIdentifier: "NC") as! UINavigationController
        self.present(navigationController, animated: true, completion: nil)
    }
    
    @IBAction func skipPushTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = self.storyboard!
        let NC: UINavigationController = storyboard.instantiateViewController(withIdentifier: "NC") as! UINavigationController
        let VC = NC.viewControllers[0] as! ViewController
        VC.getStatus = true
        self.present(NC, animated: true, completion: nil)
    }
    
}
