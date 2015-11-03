//
//  CALayerController.swift
//  CALayerGuide
//
//  Created by dulingkang on 25/10/15.
//  Copyright © 2015 ShawnDu. All rights reserved.
//

import UIKit

class CALayerController: UIViewController {
    
    @IBOutlet weak var layerView: UIView!
    
    let layer = CALayer()
    let star = UIImage(named: "CALayer")?.CGImage
    
    func setupLayer() {
        layer.frame = layerView.bounds
        layer.contents = star
        layer.contentsGravity = kCAGravityCenter
        layer.geometryFlipped = false
        layer.cornerRadius = 75
        layer.borderWidth = 5
        layer.borderColor = UIColor.whiteColor().CGColor
        layer.backgroundColor = UIColor.orangeColor().CGColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowRadius = 2.0
        layer.magnificationFilter = kCAFilterLinear
    }
    
    override func viewDidLoad() {
        setupLayer()
        layerView.layer.addSublayer(layer)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
         let identifier = segue.identifier
        if (identifier == "DisplayLayerControls") {
            (segue.destinationViewController as? CALayerControlsViewController)?.layerViewController = self
        }
    }
}
