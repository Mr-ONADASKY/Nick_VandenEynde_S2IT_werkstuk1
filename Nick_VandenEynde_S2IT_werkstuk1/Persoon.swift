//
//  Persoon.swift
//  Nick_VandenEynde_S2IT_werkstuk1
//
//  Created by Nickvde on 27/04/2018.
//  Copyright © 2018 Nickvde. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

public class Persoon{
    var naam:String
    var voornaam:String
    var foto:UIImage
    var adres:Adres
    var locatie:CLLocationCoordinate2D
    var telefoonnummer:String
    
    //let location = CLLocationCoordinate2D(latitude: 50.852183, longitude: 4.343737)
    
    init() {
        self.naam = ""
        self.voornaam = ""
        self.foto = UIImage(named: "foto1")!
        self.adres = Adres()
        self.locatie = CLLocationCoordinate2DMake(0, 0)
        self.telefoonnummer = ""
    }
    
    init(naam:String, voornaam:String, foto:UIImage, adres:Adres, locatie:CLLocationCoordinate2D, telefoonnummer:String) {
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.adres = adres
        self.locatie = locatie
        self.telefoonnummer = telefoonnummer
    }
}
