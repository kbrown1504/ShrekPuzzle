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
        
        let imageView = CustomImageView(image: UIImage(named: "shrek1"))
        imageView.contentMode = .scaleAspectFit
        imageView.frame.size.width = self.view.frame.width/4
        imageView.frame.size.height = self.view.frame.height/4
        view.addSubview(imageView)
        
        var imageNamesToChange = imageNames
        
    //        for _ in 1...4 {
    //            let randomNum = Int.random(in: 0...endIndex)
    //            let imageString = imageNamesToChange[randomNum]
    //            imageNamesToChange.remove(at: randomNum)
    //            print (imageString)
    //
    //            switch endIndex{
    //            case 3:
    //                imageView1.image = UIImage(named: imageString)
    //            case 2:
    //                imageView2.image = UIImage(named: imageString)
    //            case 1:
    //                imageView3.image = UIImage(named: imageString)
    //            default:
    //                imageView4.image = UIImage(named: imageString)
    //            }
    //            endIndex -= 1
    //        }
        
    }

//    @IBAction func imageView1PanRecog(_ sender: UIPanGestureRecognizer) {
//        let translation = sender.translation(in: self.view)
//        if let view = sender.view {
//            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
//        }
//        sender.setTranslation(CGPoint.zero, in: view)
//    }
//    @IBAction func imageView2PanRecog(_ sender: UIPanGestureRecognizer) {
//        let translation = sender.translation(in: self.view)
//        if let view = sender.view {
//            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
//        }
//        sender.setTranslation(CGPoint.zero, in: view)
//    }
//    @IBAction func imageView3PanRecog(_ sender: UIPanGestureRecognizer) {
//        let translation = sender.translation(in: self.view)
//        if let view = sender.view {
//            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
//        }
//        sender.setTranslation(CGPoint.zero, in: view)
//    }
//    @IBAction func imageView4PanRecog(_ sender: UIPanGestureRecognizer) {
//        let translation = sender.translation(in: self.view)
//        if let view = sender.view {
//            view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
//        }
//        sender.setTranslation(CGPoint.zero, in: view)
//    }
    
}

