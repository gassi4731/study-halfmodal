//
//  ViewController.swift
//  study-halfmodal
//
//  Created by Yo Higashida on 2022/02/03.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func modalButton () {
        let vc = self.storyboard!.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        if let sheet = vc.sheetPresentationController {
            // モーダルのサイズを指定する
            sheet.detents = [.medium(), .large()]
            
            // 上部の短いバーを表示する（デフォルトは非表示）
            sheet.prefersGrabberVisible = true
            
            // 元のViewControllerも操作できるようにする
            sheet.largestUndimmedDetentIdentifier = .medium
        }
        present(vc, animated: true, completion: nil)
    }
}
