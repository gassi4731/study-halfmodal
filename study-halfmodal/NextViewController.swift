//
//  NextViewController.swift
//  study-halfmodal
//
//  Created by Yo Higashida on 2022/02/03.
//

import UIKit

class NextViewController: UIViewController {
    let fruits = ["りんご", "オレンジ", "メロン", "バナナ", "パイナップル"]
    var selectedFruit: String!
    
    @IBOutlet var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // delegate設定
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    
    @IBAction func submit() {
        if let vc = self.presentingViewController as? ViewController {
            vc.fruit = selectedFruit
            vc.updateLabel()
            self.dismiss(animated: true, completion: nil)
        }
    }
}

extension NextViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    // 列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // 行数
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fruits.count
    }
    
    // 表示する内容
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruits[row]
    }
    
    // 選択されたときの挙動
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedFruit = fruits[row]
    }
}
