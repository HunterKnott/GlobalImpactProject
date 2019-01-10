//
//  ImpactViewController.swift
//  GlobalImpactProject
//
//  Created by Knott, Hunter on 1/10/19.
//  Copyright © 2019 Knott, Hunter. All rights reserved.
//

import UIKit
import MapKit

public class ImpactViewController: UIViewController
{
    @IBOutlet weak var MapView: MKMapView!
    @IBOutlet weak var ViewButton: UIButton!
    @IBOutlet weak var ViewImaage: UIImageView!
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func sender(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: 51.1279, longitude: 1.3134)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 10.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        mapView.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
    
}

