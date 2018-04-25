//
//  RunData.swift
//  WarApp
//
//  Created by Jaskarn Jagpal on 4/25/18.
//  Copyright © 2018 Jaskarn Jagpal. All rights reserved.
//

import Foundation

class RunData: NSObject {
    var miles: String?
    
    override init(){
        
    }
    
    init(miles: String){
        self.miles = miles
    }
    
    override var description: String {
        return "Miles: \(miles)"
    }
}
