//
//  CustomImageView.swift
//  ShrekPuzzle
//
//  Created by Keegan Brown on 5/31/19.
//  Copyright © 2019 Keegan Brown. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView, UIGestureRecognizerDelegate {
    
    override init(image: UIImage?) {
        super.init(image: image)
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch(_:)))
        let rotation = UIRotationGestureRecognizer(target: self, action: #selector(handleRotation(_:)))
        
        gestureRecognizers = [pan, pinch, rotation]
        
        for gestureRecognizer in gestureRecognizers! {
            gestureRecognizer.delegate = self
        }
        isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func handlePan(_ gestureRecognizer: UIPanGestureRecognizer) {
        
        if gestureRecognizer.state == .began || gestureRecognizer.state == .changed{
            let translation = gestureRecognizer.translation(in: self.superview)
            if let view = gestureRecognizer.view {
                view.center = CGPoint(x: view.center.x + translation.x, y: view.center.y + translation.y)
            }
            gestureRecognizer.setTranslation(CGPoint.zero, in: self.superview)
        }
    }
    
    @objc func handlePinch(_ gestureRecognizer: UIPinchGestureRecognizer) {
        
        if gestureRecognizer.state == .began || gestureRecognizer.state == .changed{
            if let view = gestureRecognizer.view {
                view.transform = view.transform.scaledBy(x: gestureRecognizer.scale, y: gestureRecognizer.scale)
                gestureRecognizer.scale = 1.0
            }
        }
        
    }
    
    @objc func handleRotation(_ gestureRecognizer: UIRotationGestureRecognizer) {
        
        if gestureRecognizer.state == .began || gestureRecognizer.state == .changed{
            if let view = gestureRecognizer.view {
                view.transform = view.transform.rotated(by: gestureRecognizer.rotation)
                gestureRecognizer.rotation = 0.0
            }
        }
    }
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
}
