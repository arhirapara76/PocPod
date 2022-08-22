//
//  PresentViewController.swift
//  PocPod
//
//  Created by iMac on 20/08/22.
//

import UIKit

public class PresentViewController: UIViewController {

    @IBOutlet public weak var viewMain: UIView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        viewMain.roundCorners(corners: [.topLeft, .topRight], radius: 25)
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @IBAction public func onBtnRemoveView(_ sender: Any) {
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
