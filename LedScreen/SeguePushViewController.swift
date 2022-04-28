//
//  SeguePushViewController.swift
//  LedScreen
//
//  Created by 최지우 on 2022/04/27.
//

import UIKit

class SeguePushViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tabBackButton(_ sender: UIButton){
        self.navigationController?.popViewController(animated: true) //popToRootViewController - 루트(메인)로 바로이동
    }
    
}
