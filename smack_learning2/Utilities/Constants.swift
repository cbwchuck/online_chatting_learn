//
//  Constants.swift
//  smack_learning2
//
//  Created by Chuck on 2018/5/9.
//  Copyright © 2018年 Chuck. All rights reserved.
//

import Foundation


typealias completionHandler = (_ Success: Bool) -> () //closure, pass into a Bool variable, and return nothing

//URL Constants
/* Please add in your heroku url of the app here */
let BASE_URL = "https://smacklerning.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND_TO_CHANNEL = "unwindToChannel"


//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
