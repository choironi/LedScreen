//
//  CodePresentViewController.swift
//  LedScreen
//
//  Created by 최지우 on 2022/04/27.
//

import UIKit

class CodePresentViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
