//
//  Adres.swift
//  Nick_VandenEynde_S2IT_werkstuk1
//
//  Created by Nickvde on 27/04/2018.
//  Copyright © 2018 Nickvde. All rights reserved.
//

import Foundation

class Adres{
    var straat:String
    var huisnummer:Int
    var postcode:Int
    var gemeente:String
    
    init(straat:String, huisnummer:Int, postcode:Int, gemeente:String) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
    
    init() {
        self.straat = ""
        self.huisnummer = 0
        self.postcode = 0
        self.gemeente = ""
    }
}
