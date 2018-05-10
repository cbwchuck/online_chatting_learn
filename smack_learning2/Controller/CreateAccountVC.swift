//
//  CreateAccountVC.swift
//  smack_learning2
//
//  Created by Chuck on 2018/5/10.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
    }
}
