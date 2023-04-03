//
//  AddressView.swift
//  HIVE_NAV_SKELETON
//
//  Created by Kevin Buchholz on 2/15/23.
//

import SwiftUI

        struct AddressRow: View {
            
            let address: AddressResult
            var date: Date
            var body: some View {
                NavigationLink {
                    MapView(address: address, date: date)
                } label: {
                    VStack(alignment: .leading) {
                        Text(address.title)
                        Text(address.subtitle)
                            .font(.caption)
                    }
                }
                .padding(.bottom, 2)
            }
        }

