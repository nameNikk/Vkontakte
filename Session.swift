//
//  Session.swift
//  VK
//
//  Created by Никита Макаренко on 22.03.2021.
//

import Foundation


class Session {
    
    static let shared = Session()
    
    var token: String = ""
    var userId = Int()
    
    private init(){
        
    }
}
