//
//  ChannelVC.swift
//  smack_learning2
//
//  Created by Chuck on 2018/5/9.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60 //调整此界面在按下按钮后显示出来的宽度
    }

    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){
        //unwind from createAccountVC
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
