//
//  ViewController.swift
//  SkipDemo
//
//  Created by 繁野怜央 on 2021/04/06.
//

import UIKit

class ViewController: UIViewController {
    
    var getStatus = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if getStatus == true {
            let storyboard: UIStoryboard = self.storyboard!
            let nextView = storyboard.instantiateViewController(withIdentifier: "pushVC") as! PushViewController
            self.navigationController?.pushViewController(nextView, animated: true)
        }
        
    }
    
    @IBAction func defaultTapped(_ sender: UIButton) {
        let storyboard: UIStoryboard = self.storyboard!
        let nextView = storyboard.instantiateViewController(withIdentifier: "pushVC") as! PushViewController
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    
    @IBAction func dismissTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }


}

