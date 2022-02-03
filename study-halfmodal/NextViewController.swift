//
//  NextViewController.swift
//  study-halfmodal
//
//  Created by Yo Higashida on 2022/02/03.
//

import UIKit

class NextViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeModal() {
        self.dismiss(animated: true, completion: nil)
    }
}

extension NextViewController {
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        super.dismiss(animated: flag, completion: completion)
        print("dismiss")
    }
}
