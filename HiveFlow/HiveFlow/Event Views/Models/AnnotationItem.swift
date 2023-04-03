//
//  AnnotationItem.swift
//  HIVE_NAV_SKELETON
//
//  Created by Kevin Buchholz on 2/15/23.
//

import Foundation
import MapKit



struct AnnotationItem: Identifiable {
    let id = UUID()
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
