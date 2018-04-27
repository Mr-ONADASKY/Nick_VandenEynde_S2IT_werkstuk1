//
//  FirstViewController.swift
//  Nick_VandenEynde_S2IT_werkstuk1
//
//  Created by Nickvde on 27/04/2018.
//  Copyright © 2018 Nickvde. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class PersoonControllerDetail: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var persoon = Persoon()
    var myAnnotation = MyAnnotation(coordinate: CLLocationCoordinate2DMake(0, 0), title: "")
    var locationManager = CLLocationManager()

    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        
    }
    @IBOutlet weak var myMapView: MKMapView!
    @IBOutlet weak var voornaamLabel: UILabel!
    @IBOutlet weak var naamLabel: UILabel!
    @IBOutlet weak var straatLabel: UILabel!
    @IBOutlet weak var huisnummerLabel: UILabel!
    @IBOutlet weak var postcodeLabel: UILabel!
    @IBOutlet weak var gemeenteLabel: UILabel!
    @IBOutlet weak var telefoonnummerLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.voornaamLabel.text = persoon.voornaam
        self.naamLabel.text = persoon.naam
        self.straatLabel.text = persoon.adres.straat
        self.huisnummerLabel.text = String(persoon.adres.huisnummer)
        self.postcodeLabel.text = String(persoon.adres.postcode)
        self.gemeenteLabel.text = persoon.adres.gemeente
        self.telefoonnummerLabel.text = persoon.telefoonnummer
        self.image.image = persoon.foto
        
        self.myAnnotation = MyAnnotation(coordinate: persoon.locatie, title: persoon.voornaam)
        
        self.myMapView.addAnnotation(self.myAnnotation)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
        let center = CLLocationCoordinate2D(latitude: self.myAnnotation.coordinate.latitude, longitude: self.myAnnotation.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! imageViewController
        vc.personImage = self.persoon.foto
    }

    
    
}

