//
//  MapView.swift
//  HIVE_NAV_SKELETON
//
//  Created by Kevin Buchholz on 2/15/23.
//

import SwiftUI
import MapKit
import HexGrid

struct MapView: View {
    
    @StateObject private var viewModel = MapViewModel()

    private let address: AddressResult
    var date: Date
    init(address: AddressResult, date: Date) {
        self.address = address
        self.date = date
    }
    
    var body: some View {
        NavigationView {
        VStack{
            Map(
                coordinateRegion: $viewModel.region,
                annotationItems: viewModel.annotationItems,
                annotationContent: { item in
                    MapMarker(coordinate: item.coordinate)
                    
                }
            )
            .onAppear {
                self.viewModel.getPlace(from: address)
            }
            .padding(7)
            .background(Color.init(uiColor: .systemBackground), in: RoundedRectangle(cornerRadius: 20))
            .padding()
            
            
            ZStack{
                // RoundedRectangle(cornerRadius: 20)
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.init(uiColor: .systemBackground))
                    .padding()
                
                VStack{
                    Text("Park Cleanup")
                        .font(.custom("Futura", size: 40))
                    
                    Text("at")
                        .font(.custom("Futura", size: 30))
                    
                    Text(address.title)
                        .font(.custom("Futura", size: 40))
                    
                    Text(date.formatted())
                        .font(.custom("Futura", size: 30))
                    
                }.padding()
                }
            }
        .background(
              Image("TileBackgroundLavender"))
        }
    }
}
    

//struct MapView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        //var actionViewModel = ActionViewModel()
//        MapView()
//    }
//}

