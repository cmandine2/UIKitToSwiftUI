//
//  ViewController.swift
//  UIKitToSwiftUI
//
//  Created by Amandine Cousin on 11/12/2023.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let hostingController = UIHostingController(rootView: SwiftUIView())
        
        self.addChild(hostingController)
        self.view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
        hostingController.view.backgroundColor = UIColor(.gray)
        
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        
        hostingController.view.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 20).isActive = true
        hostingController.view.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        hostingController.view.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        hostingController.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }

}

