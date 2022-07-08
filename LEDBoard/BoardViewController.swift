//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by 한상민 on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var userTextFeild: UITextField!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet var buttonList: [UIButton]!
    @IBOutlet weak var textFeildView: UIView!
    @IBOutlet weak var resultView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //designButton()
        studyOutletCollection(list: buttonList)
        specificDesignButton(sendButton, buttonTitle: "바꾸기", highlightedTitle: "빨리")
        specificDesignButton(textColorButton, buttonTitle: "색 바꾸기", highlightedTitle: "완료")
        designTextField()
        resultLabel.numberOfLines = 0
        self.userTextFeild.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func designTextField() {
        userTextFeild.placeholder = "내용을 입력해주세요"
        userTextFeild.textColor = .brown
        userTextFeild.keyboardType = .emailAddress
        userTextFeild.adjustsFontSizeToFitWidth = true
    }
    
    func designButton() {
        sendButton.setTitle("보내기", for: .normal)
        sendButton.setTitle("빨리!!", for: .highlighted)
        sendButton.backgroundColor = .yellow
        sendButton.layer.cornerRadius = 8
        sendButton.layer.borderColor = UIColor.black.cgColor
        sendButton.layer.borderWidth = 3
        sendButton.setTitleColor(.red, for: .normal)
        sendButton.setTitleColor(.blue, for: .highlighted)
    }
    
    func specificDesignButton(_ button:UIButton, buttonTitle t1:String, highlightedTitle t2:String){
        button.setTitle(t1, for: .normal)
        button.setTitle(t2, for: .highlighted)
    }
    
    func studyOutletCollection(list:[UIButton]) {
        for item in list {
            item.backgroundColor = .yellow
            item.layer.cornerRadius = 8
            item.layer.borderColor = UIColor.black.cgColor
            item.layer.borderWidth = 3
            item.setTitleColor(.red, for: .normal)
            item.setTitleColor(.blue, for: .highlighted)
        }
//        // 1. 배열, 반복문 활용
//        let buttonArray: [UIButton] = [sendButton, textColorButton]
//
//        for item in buttonArray {
//            item.backgroundColor = .blue
//            item.layer.cornerRadius = 2
//        }
//        // 2. 아웃렛 컬렉션
//        for item in buttonList {
//            item.backgroundColor = .blue
//            item.layer.cornerRadius = 2
//        }
    }
    
    @IBAction func sendButtonClicked(_ sender: UIButton) {
//        print(sendButton.currentTitle)
        resultLabel.text = userTextFeild.text
    }
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        if self.textFeildView.alpha == 1 {
            UIView.animate(withDuration: 0.5, animations: {self.textFeildView.alpha = 0})
            UIView.animate(withDuration: 0.5, animations: {
                self.resultView.transform = CGAffineTransform(translationX: 0, y: -82)
            })
        } else{
            UIView.animate(withDuration: 0.5, animations: {self.textFeildView.alpha = 1})
            UIView.animate(withDuration: 0.5, animations: {
                self.resultView.transform = CGAffineTransform(translationX: 0, y: 0)
            })
        }
       
    }
    
    @IBAction func exampleButtonsClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // TextField 비활성화
        return true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
