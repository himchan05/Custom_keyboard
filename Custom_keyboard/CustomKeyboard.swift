//
//  CustomKeyboard.swift
//  Custom_keyboard
//
//  Created by 박힘찬 on 2021/03/17.
//

import UIKit

// delegate - 기능, 값을 위임해준다.
// 1번
protocol CustomKeyboardDelegate {
    func keyboardTapped(str: String)
}
class CustomKeyboard: UIView {
    var delegate: CustomKeyboardDelegate?
    //규격에 맞는 프로토콜이 사용될 수 있도록 연결해주는 변수 delegate
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        //2번
        delegate?.keyboardTapped(str: sender.titleLabel!.text!)
    }
    
    //여기까지 마쳤으면 viewController.swift로 이동 후 클래스 이름옆에 ,후
    //프로토콜 선언,main에서 이 프로토콜 규격을 사용하겠다 지정.
}
