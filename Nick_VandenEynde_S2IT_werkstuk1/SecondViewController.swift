//
//  SecondViewController.swift
//  Nick_VandenEynde_S2IT_werkstuk1
//
//  Created by Nickvde on 27/04/2018.
//  Copyright © 2018 Nickvde. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    var locationManager = CLLocationManager()
    var personen = [Persoon]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personen.append(Persoon(naam: "Den Imbessielen Boer", voornaam: "Jos", foto: UIImage(named: "foto1")!, adres:  Adres(straat: "ZeemeeuwStraat", huisnummer: 45, postcode: 1765, gemeente: "Den Lemburg"), locatie: CLLocationCoordinate2DMake(50.852183, 4.343737), telefoonnummer: "05352359392395"))
        
        personen.append(Persoon(naam: "Van achter t hoeksken", voornaam: "Willy", foto: UIImage(named: "foto2")!, adres:  Adres(straat: "Huppelpuflaan", huisnummer: 92, postcode: 1735, gemeente: "Den Hunsberg"), locatie: CLLocationCoordinate2DMake(50.8212183, 4.313737), telefoonnummer: "0535234342395"))
        
        personen.append(Persoon(naam: "Van den Delhaize", voornaam: "André", foto: UIImage(named: "foto3")!, adres:  Adres(straat: "ZeemeeuwStraat", huisnummer: 45, postcode: 1945, gemeente: "Merchtem City"), locatie: CLLocationCoordinate2DMake(50.812183, 4.353737), telefoonnummer: "05352359493095"))
        //       locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        for person in personen {
            let myAnnotation = MyAnnotation(coordinate: person.locatie, title: person.voornaam)
            
            self.myMapView.addAnnotation(myAnnotation);
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        mapView.setRegion(region, animated: true)
    }

}

