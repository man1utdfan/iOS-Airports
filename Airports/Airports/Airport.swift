/*
*
* Airport.swift
* Airports
* Created by Guus Beckett on 14/09/15.
*
*   Copyright © 2015 Reupload. All rights reserved.
*
*
* Licensed under the EUPL, Version 1.1 or – as soon they will be approved by the European Commission - subsequent versions of the EUPL (the "Licence");
* You may not use this work except in compliance with the Licence.
* You may obtain a copy of the Licence at:
*
* http://ec.europa.eu/idabc/eupl
*
* Unless required by applicable law or agreed to in writing, software distributed under the Licence is distributed on an "AS IS" basis,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the Licence for the specific language governing permissions and limitations under the Licence.
*/

import MapKit

class Airport {
    
    var icao : String? //Primary key
    var name : String?
    var iso_country : String?
    var municipality : String?
    var longitude : Double?
    var latitude : Double?
    var elevation: Double?
    private var location : CLLocationCoordinate2D?
    
    func getLocation() -> CLLocationCoordinate2D{
        if((location == nil)){
            self.location = CLLocationCoordinate2D(latitude: self.latitude!,longitude: self.longitude!)
        }
        return location!
    }
    
}