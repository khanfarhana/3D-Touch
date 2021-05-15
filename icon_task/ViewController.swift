//
//  ViewController.swift
//  icon_task
//
//  Created by Farhana Khan on 22/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // change app icon to "pichu"
    @IBAction func netflixButtonDidTap(_ sender: UIButton) {
        changeIcon(to: "netflix")
    }
    
    // change app icon to "pikachu"
    @IBAction func tiktokButtonDidTap(_ sender: UIButton) {
        changeIcon(to: "tiktok")
    }
    
    // change app icon to "raichu"
    @IBAction func photosButtonDidTap(_ sender: UIButton) {
        changeIcon(to: "photos")
    }
    func changeIcon(to iconName: String) {
        // 1
        guard UIApplication.shared.supportsAlternateIcons else {
            return
        }
        
        // 2
        UIApplication.shared.setAlternateIconName(iconName, completionHandler: { (error) in
            // 3
            if let error = error {
                print("App icon failed to change due to \(error.localizedDescription)")
            } else {
                print("App icon changed successfully")
            }
        })
    }
    
}

