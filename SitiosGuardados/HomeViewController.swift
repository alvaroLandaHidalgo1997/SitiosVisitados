//
//  HomeViewController.swift
//  SitiosGuardados
//
//  Created by alumnos on 22/1/19.
//  Copyright © 2019 Alvaro Landa. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class HomeViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
