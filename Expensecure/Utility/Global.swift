//
//  Global.swift
//  Expensecure
//
//  Created by Ishan Vyas on 01/11/19.
//  Copyright © 2019 Coddiction. All rights reserved.
//

import Foundation
import UIKit

enum selectedOption {
    case income
    case expense
}

class Global {
    //MARK:—  Color For App 
    static let appBackgroundColor : UIColor = UIColor(red: 0.0/255.0, green: 71.0/255.0, blue: 204.0/255.0, alpha: 1.0)
    static let unSelectedButtonBackgroundColor : UIColor = UIColor(red: 0.0/255.0, green: 59.0/255.0, blue: 168.0/255.0, alpha: 1.0)
    static let buttonBlueTextColor : UIColor = UIColor(red: 4.0/255.0, green: 44.0/255.0, blue: 92.0/255.0, alpha: 1.0)
    
    //MARK:-  Fonts For App 
    static let heavyFontName : String = "Avenir-Heavy"
    static let buttonHeavyFont : UIFont = UIFont(name:Global.heavyFontName , size: 17.0)!
}
