//
//  gpsController.swift
//  gpsStatistics
//
//  Created by Utku Lekesiz on 11.07.2022.
//

import Foundation
import CoreLocation

class GPSController: NSObject,ObservableObject, CLLocationManagerDelegate {
    
    private let locationManager = CLLocationManager()
    @Published var navSpeed = 0.0
    var startTime = Date.now
    var applicationIsRunning = false
    var timeCounter = 0.0
    
    override init() {
        super.init()
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        self.locationManager.delegate = self
        self.locationManager.startUpdatingLocation()
        
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .denied:
            print("Location access denied")
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
            print("Location not determined")
        case .authorizedWhenInUse:
            print("AUTHORIZATION SUCCESS")
        default:
            print("I dont know how things got up to here")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {return}
        self.navSpeed = location.speed * 3.6
        // let altitude = location.altitude
        calculateSpeedometerValues()
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
    
    func requestNavPermission() {
        locationManager.requestWhenInUseAuthorization()
    }
    
    func calculateSpeedometerValues(){
        
        if(self.navSpeed<=50.0){
            self.timeCounter = 9.0
        }
        else if(self.navSpeed>50.0)
        {
            self.timeCounter = 16.0
        }
        
    }
    
}

