//
//  TestViewController.swift
//  PocPod
//
//  Created by iMac on 20/08/22.
//

import UIKit

class TestViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onBtnOpenView(_ sender: Any) {
        let podBundle = Bundle(for: PresentViewController.self)
        let storyBoard = UIStoryboard.init(name: "Main", bundle: podBundle)
        if let vc = storyBoard.instantiateViewController(withIdentifier: "PresentViewController") as? PresentViewController {
            self.navigationController?.present(vc, animated: true, completion: nil)
        }
    }
}

