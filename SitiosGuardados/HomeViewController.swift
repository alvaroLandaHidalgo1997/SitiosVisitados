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
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
    }
    func pin(localizacion: CLLocation) {
        //let localizacion = CLLocationCoordinate2DMake(40, -4)
        let span = MKCoordinateSpanMake(0.02, 0.02)
        let region = MKCoordinateRegion(center: localizacion.coordinate, span: span)
        map.setRegion(region, animated: true)
        
        let anotacion = MKPointAnnotation()
        anotacion.coordinate = localizacion.coordinate
        anotacion.title = "Sitio"
        anotacion.subtitle = "Maravilloso"
        map.addAnnotation(anotacion)
    }
    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager,
                         didChangeAuthorization status: CLAuthorizationStatus) {
        manager.startUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager,
                         didUpdateLocations locations: [CLLocation]) {
        let localizacion = locations[0]
        // ... Hacer algo con la localización ...
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func indicaciones(localizacion: CLLocation) {
        //let coordenadasOrigen = CLLocationCoordinate2D(latitude: localizacion.coordinate.latitude, longitude: localizacion.coordinate.longitude)
        map.delegate = self
        let coordenadasOrigen = CLLocationCoordinate2DMake(25.0305, 121.5360)
        let coordenadasDestino = CLLocationCoordinate2DMake(24.9511, 121.2358)
        map.setRegion(MKCoordinateRegionMake(coordenadasOrigen, MKCoordinateSpanMake(0.7,0.7)), animated: true)
        
    }
    func setMapLocation(mapView mapView: MKMapView, latitude: CLLocationDegrees, longitud: CLLocationDegrees, zoom: Double = 1){
        
        // define the map zoom span
        let latitudZoomLevel : CLLocationDegrees = zoom
        let longitudZoomLevel : CLLocationDegrees = zoom
        let zoomSpan:MKCoordinateSpan = MKCoordinateSpanMake(latitudZoomLevel, longitudZoomLevel)
        
        // use latitud and longitud to create a location coordinate
        let location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitud)
        
        // define and set the region of our map using the zoom map and location
        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, zoomSpan)
        mapView.setRegion(region, animated: true)
        
    }
}
