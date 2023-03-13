//
//  ViewController.swift
//  Project1
//
//  Created by Meitar Basson on 13/03/2023.
//

import UIKit

class ViewController: UIViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default
        // Working with the file system
        
        
        let path = Bundle.main.resourcePath!
        // Getting our app bundle path - contains all our complied program + assets
        
        
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print(pictures)
    }


}

