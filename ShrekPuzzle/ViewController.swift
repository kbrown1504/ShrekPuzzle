//
//  ViewController.swift
//  ShrekPuzzle
//
//  Created by Keegan Brown on 5/31/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let imageNames = ["shrek1", "shrek2", "shrek3", "shrek4"]
    var endIndex = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        view.isUserInteractionEnabled = true
        createImageView(imageName: "shrek1")
        createImageView(imageName: "shrek2")
        createImageView(imageName: "shrek3")
        createImageView(imageName: "shrek4")
        
    }
    
    func createImageView (imageName : String){
        let imageView = CustomImageView(image: UIImage(named: imageName))
        imageView.contentMode = .scaleAspectFill
        imageView.frame.size.width = self.view.frame.width/4
        imageView.frame.size.height = self.view.frame.height/4
        imageView.center = CGPoint(x: CGFloat.random(in: 25...view.frame.width-25), y: CGFloat.random(in: 50...view.frame.height-50))
        view.addSubview(imageView)
    }
    
}

