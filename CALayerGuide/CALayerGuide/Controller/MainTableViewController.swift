//
//  MainTableViewController.swift
//  CALayerGuide
//
//  Created by dulingkang on 25/10/15.
//  Copyright © 2015 ShawnDu. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    var tables:[(String, String)] {
        get {
            return [
                ("CALayer", "Manage and animate visual content"),
                ("CAScrollLayer", "Display portion of a scrollable layer"),
                ("CATextLayer", "Render plain text or attributed strings"),
                ("AVPlayerLayer", "Display an AV player "),
                ("CAGradientLayer", "Apply a color gradient over the background"),
                ("CAReplicatorLayer", "Duplicate a source layer"),
                ("CATiledLayer", "Asynchronously draw layer content in tiles"),
                ("CAShapeLayer", "Draw using scalable vector paths"),
                ("CAEAGLLayer", "Draw OpenGL content"),
                ("CATransformLayer", "Draw 3D structures"),
                ("CAEmitterLayer", "Render animated particles")
            ]
        }
    }
    
    // MARK: - UITableViewDataSource
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tables.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("mainTableCell")!
        let row = indexPath.row
        cell.textLabel!.text = tables[row].0
        cell.detailTextLabel!.text = tables[row].1
        cell.imageView!.image = UIImage(named: tables[row].0)
        return cell
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath:NSIndexPath) {
        let identifier = tables[indexPath.row].0
        self.performSegueWithIdentifier(identifier, sender: nil)
    }
}
