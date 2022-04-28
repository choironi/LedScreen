//
//  CodePushViewController.swift
//  LedScreen
//
//  Created by 최지우 on 2022/04/27.
//

import UIKit

class CodePushViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
