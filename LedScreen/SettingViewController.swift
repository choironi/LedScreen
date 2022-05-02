//
//  SettingViewController.swift
//  LedScreen
//
//  Created by 최지우 on 2022/04/28.
//

import UIKit

protocol LedBoardSettingDelegate: AnyObject {
    func changeSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}


class SettingViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    
    weak var delegate: LedBoardSettingDelegate?
    var ledText: String?
    var textColor: UIColor = .yellow // 초기값 설정
    var backgroundColor : UIColor = .black // 초기값 설정
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView() 


    }
    
    private func configureView() {
        if let ledText = self.ledText {
            self.textField.text = ledText
        }
        self.changeTextColor(color: textColor)
        self.changeBackgroundColor(color: backgroundColor)
    }
    
    @IBAction func tapTextColorButton(_ sender: UIButton) {
        if sender == self.yellowButton {
            self.changeTextColor(color: .yellow)
            self.textColor = .yellow
        }   else if sender == self.purpleButton {
            self.changeTextColor(color: .purple)
            self.textColor = .purple
        } else {
            self.changeTextColor(color: .green)
            self.textColor = .green
        }
    }
    
    @IBAction func tapBackgroundColorButton(_ sender: UIButton) {
        if sender == self.blackButton {
            self.changeBackgroundColor(color: .black)
            self.backgroundColor = .black
        }   else if sender == self.blueButton {
            self.changeBackgroundColor(color: .blue)
            self.backgroundColor = .blue
        }   else {
            self.changeBackgroundColor(color: .orange)
            self.backgroundColor = .orange
        }
    }
    @IBAction func tapSaveButton(_ sender: UIButton) {
        self.delegate?.changeSetting(text: self.textField.text,
                                     textColor: self.textColor,
                                     backgroundColor: self.backgroundColor)
    }
    
    private func changeTextColor(color: UIColor) {
        self.yellowButton.alpha = color == UIColor.yellow ? 1 : 0.2
        self.purpleButton.alpha = color == UIColor.purple ? 1 : 0.2
        self.greenButton.alpha = color == UIColor.green ? 1 : 0.2
        
    }
    
    private func changeBackgroundColor(color: UIColor) {
        self.blackButton.alpha = color == UIColor.black ? 1 : 0.2
        self.blueButton.alpha = color == UIColor.blue ? 1 : 0.2
        self.orangeButton.alpha = color == UIColor.orange ? 1 : 0.2
        
        
    }
}
