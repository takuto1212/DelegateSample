//
//  FirstViewController.swift
//  DelegateSample
//
//  Created by 西村　拓人 on 2018/09/05.
//  Copyright © 2018年 西村　拓人. All rights reserved.
//

import UIKit

/// 第１画面
class FirstViewController: UIViewController {

    // MARK: - IBOutlets
    
    /// 文字列を表示するためのラベル
    @IBOutlet weak var textLabel: UILabel!
    
    // MARK: - IBActions
    
    /// 編集ボタン押下
    ///
    /// - Parameter sender: 編集ボタン
    @IBAction func tapEditButton(_ sender: Any) {
        navigationController?.pushViewController(SecondViewController(delegate: self), animated: true)
    }
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - SecondViewControllerProtocol
extension FirstViewController: SecondViewControllerProtocol {
    func registString(editString: String){
        textLabel.text = editString
    }
}

