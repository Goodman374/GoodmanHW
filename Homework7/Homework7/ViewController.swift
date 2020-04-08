//
//  ViewController.swift
//  Homework7
//
//  Created by Joshua Goodman on 4/1/20.
//  Copyright © 2020 Joshua Goodman. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var distanceLabel: UILabel!
    

    let locMan: CLLocationManager = CLLocationManager()
    var startLocation: CLLocation!
    
    let matbLatitude: CLLocationDegrees = 24.60
    let matbLongitude: CLLocationDegrees = 13.19
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let newLocation: CLLocation=locations[0]
        NSLog("Something is happening")
        
        if newLocation.horizontalAccuracy >= 0 {
            let matb: CLLocation = CLLocation(latitude: matbLatitude,longitude: matbLongitude)
            let delta: CLLocationDistance = matb.distance(from: newLocation)
            let miles: Double = (delta * 0.000621371) + 0.5
            if miles < 3 {
                locMan.stopUpdatingLocation()
                distanceLabel.text = "Enjoy\n M&T Bank Stadium"
            } else {
                let commaDelimited: NumberFormatter = NumberFormatter()
                commaDelimited.numberStyle = NumberFormatter.Style.decimal
                distanceLabel.text=commaDelimited.string(from: NSNumber(value: miles))!+"Miles to M&T Bank Stadium"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locMan.delegate = self
        locMan.desiredAccuracy = kCLLocationAccuracyKilometer
        locMan.distanceFilter = 1609;
        locMan.requestWhenInUseAuthorization()
        locMan.startUpdatingLocation()
        startLocation = nil
        
    }


}

