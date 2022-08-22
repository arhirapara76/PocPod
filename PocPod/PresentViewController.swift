//
//  PresentViewController.swift
//  PocPod
//
//  Created by iMac on 20/08/22.
//

import UIKit

 class PresentViewController: UIViewController {

    @IBOutlet  weak var viewMain: UIView!
    
     override func viewDidLoad() {
        super.viewDidLoad()
        viewMain.roundCorners(corners: [.topLeft, .topRight], radius: 25)
    }
    
     override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @IBAction func onBtnRemoveView(_ sender: Any) {
        dismiss(animated: true)
    }
}

extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
