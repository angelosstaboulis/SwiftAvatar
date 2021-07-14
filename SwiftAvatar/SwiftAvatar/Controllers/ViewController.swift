//
//  ViewController.swift
//  SwiftAvatar
//
//  Created by Angelos Staboulis on 14/7/21.
//

import UIKit
import Toucan
class ViewController: UIViewController {
    @IBOutlet var swiftAvatar: SwiftAvatar!
    override func viewDidLoad() {
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.swiftAvatar.showImage()
    }
    
}

