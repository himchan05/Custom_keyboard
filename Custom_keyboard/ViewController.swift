//
//  ViewController.swift
//  Custom_keyboard
//
//  Created by 박힘찬 on 2021/03/17.
//

import UIKit
//3번
class ViewController: UIViewController, CustomKeyboardDelegate {
    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 커스텀 키보드 설정 방법
        // firstTextField.inputView = "커스텀 키보드 뷰"
        
        //xib 파일 정보 불러오는 법 (로드 닙)
        let loadNib = Bundle.main.loadNibNamed("CustomKeyboard", owner: nil, options: nil)
        
        //첫번째 오브젝트 가져오기 (로드 닙 정보를 불러와서 첫번째 오브젝트를 타입에 맞춰서 가져오겠다.)
        let myKeyboadView = loadNib?.first as! CustomKeyboard
        
        //불러온 키보드 뷰를 텍스트필드와 연결
        firstTextField.inputView=myKeyboadView
        
        
        //4번
        myKeyboadView.delegate=self
        //뷰 컨트롤러에 delegate 위임을 하겠다.
    }

    
    //5번
    func keyboardTapped(str: String) {
        //키보드 눌렀을 때 호출 됨.
        print(str)
        
        let oldNumber = Int(firstTextField.text!)
        var newNumber = Int(str)
        
        if str == "00" && oldNumber != nil{
            newNumber = oldNumber! * 100
        }
        if str == "000" && oldNumber != nil{
            newNumber = oldNumber! * 1000
        }
        
        //Optional타입을 String으로 변환하면 Optional이 붙음
        //newNumber의 Optional타입이 nil이 아니면 Optional이 아닌 타입으로 변환해라
        if let hasNumber = newNumber {
                firstTextField.text = String(describing: hasNumber)
            }
}
}
