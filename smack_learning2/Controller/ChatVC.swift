//
//  ChatVC.swift
//  smack_learning2
//
//  Created by Chuck on 2018/5/9.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())//可以不用按按钮就直接滑动到按按钮才出来的界面
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())//可以直接点一下按钮就直接回到按按钮之前的界面
        
    }


}
