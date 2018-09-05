//
//  SecondViewController.swift
//  DelegateSample
//
//  Created by 西村　拓人 on 2018/09/05.
//  Copyright © 2018年 西村　拓人. All rights reserved.
//

import UIKit

// MARK: SecondViewControllerProtocol

protocol SecondViewControllerProtocol {
    
    /// 第２画面で入力された文字列を使うためのメソッド
    ///
    /// - Parameter editString: 第２画面で入力された文字列
    func registString(editString: String)
}

/// 第２画面
class SecondViewController: UIViewController {

    // MARK: - Properties
    let delegate: SecondViewControllerProtocol
    
    // MARK: - IBOutlets
    
    /// 文字列入力テキストフィールド
    @IBOutlet weak var editTextField: UITextField!
    
    // MARK: - IBActions
    
    /// 登録ボタン押下
    ///
    /// - Parameter sender: 登録ボタン
    @IBAction func tapRegisterButton(_ sender: UIButton) {
        guard let editString = editTextField.text else { return }
        delegate.registString(editString: editString)
        navigationController?.popViewController(animated: true)
    }

    // MARK: - Initializers
    
    init(delegate: SecondViewControllerProtocol) {
        self.delegate = delegate
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
